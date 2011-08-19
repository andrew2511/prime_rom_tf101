.class public Lcom/asus/keyboard/KeyboardService;
.super Landroid/app/Service;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/keyboard/KeyboardService$SettingsFKeyController;,
        Lcom/asus/keyboard/KeyboardService$BrowserFKeyController;,
        Lcom/asus/keyboard/KeyboardService$MuteFKeyController;,
        Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;,
        Lcom/asus/keyboard/KeyboardService$ScreenshotFKeyController;,
        Lcom/asus/keyboard/KeyboardService$BTFKeyController;,
        Lcom/asus/keyboard/KeyboardService$WifiFKeyController;,
        Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;,
        Lcom/asus/keyboard/KeyboardService$FKeyController;,
        Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;
    }
.end annotation


# instance fields
.field private mBTFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

.field private final mBinder:Lcom/asus/keyboard/IKeyboardService$Stub;

.field private mBrightnessFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

.field private mBrowserFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

.field private mContext:Landroid/content/Context;

.field private mFunctionKeyIntentReceiver:Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconBar:Landroid/widget/ImageView;

.field private mLayout:Landroid/view/View;

.field private mLayoutBar:Landroid/view/View;

.field private mLevel:I

.field private mLevelView:Lcom/asus/keyboard/BrightnessLevelView;

.field private mMuteFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

.field private mOSDId:I

.field private mScreenshotFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

.field private mSettingsFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

.field private mToast:Landroid/widget/Toast;

.field private mTouchpadFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

.field private mWifiFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 506
    const-string v0, "keyboard_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mFunctionKeyIntentReceiver:Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;

    .line 54
    new-instance v0, Lcom/asus/keyboard/KeyboardService$1;

    invoke-direct {v0, p0}, Lcom/asus/keyboard/KeyboardService$1;-><init>(Lcom/asus/keyboard/KeyboardService;)V

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mBinder:Lcom/asus/keyboard/IKeyboardService$Stub;

    .line 487
    return-void
.end method

.method static synthetic access$100(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mWifiFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/asus/keyboard/KeyboardService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/asus/keyboard/KeyboardService;->mLevel:I

    return p1
.end method

.method static synthetic access$1100(Lcom/asus/keyboard/KeyboardService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService;->showBarOSD()V

    return-void
.end method

.method static synthetic access$1200(Lcom/asus/keyboard/KeyboardService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService;->showOSD()V

    return-void
.end method

.method static synthetic access$1500(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/asus/keyboard/KeyboardService;->setTouchpadEnabled_native(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mBTFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mTouchpadFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mBrightnessFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mScreenshotFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mMuteFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mBrowserFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/keyboard/KeyboardService;)Lcom/asus/keyboard/KeyboardService$FKeyController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mSettingsFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    return-object v0
.end method

.method static synthetic access$902(Lcom/asus/keyboard/KeyboardService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/asus/keyboard/KeyboardService;->mOSDId:I

    return p1
.end method

.method private registerFunctionKeyIntentReceiver()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService;->mFunctionKeyIntentReceiver:Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;-><init>(Lcom/asus/keyboard/KeyboardService;Lcom/asus/keyboard/KeyboardService$1;)V

    iput-object v1, p0, Lcom/asus/keyboard/KeyboardService;->mFunctionKeyIntentReceiver:Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, functionKeyFilter:Landroid/content/IntentFilter;
    const-string v1, "com.asus.keyboard.action.FUNCTION_KEY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService;->mFunctionKeyIntentReceiver:Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/asus/keyboard/KeyboardService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    .end local v0           #functionKeyFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private static native setTouchpadEnabled_native(Z)V
.end method

.method private showBarOSD()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mLevelView:Lcom/asus/keyboard/BrightnessLevelView;

    iget v1, p0, Lcom/asus/keyboard/KeyboardService;->mLevel:I

    invoke-virtual {v0, v1}, Lcom/asus/keyboard/BrightnessLevelView;->setLevel(I)V

    .line 130
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService;->mLayoutBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    return-void
.end method

.method private showOSD()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/asus/keyboard/KeyboardService;->mOSDId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    return-void
.end method

.method private unregisterFunctionKeyIntentReceiver()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mFunctionKeyIntentReceiver:Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mFunctionKeyIntentReceiver:Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/keyboard/KeyboardService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mFunctionKeyIntentReceiver:Lcom/asus/keyboard/KeyboardService$FunctionKeyIntentReceiver;

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService;->mBinder:Lcom/asus/keyboard/IKeyboardService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    invoke-virtual {p0}, Lcom/asus/keyboard/KeyboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mContext:Landroid/content/Context;

    .line 68
    new-instance v2, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;

    iget-object v3, p0, Lcom/asus/keyboard/KeyboardService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mBrightnessFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    .line 69
    new-instance v2, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;

    iget-object v3, p0, Lcom/asus/keyboard/KeyboardService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mWifiFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    .line 70
    new-instance v2, Lcom/asus/keyboard/KeyboardService$BTFKeyController;

    iget-object v3, p0, Lcom/asus/keyboard/KeyboardService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/asus/keyboard/KeyboardService$BTFKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mBTFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    .line 71
    new-instance v2, Lcom/asus/keyboard/KeyboardService$ScreenshotFKeyController;

    iget-object v3, p0, Lcom/asus/keyboard/KeyboardService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/asus/keyboard/KeyboardService$ScreenshotFKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mScreenshotFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    .line 72
    new-instance v2, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;

    iget-object v3, p0, Lcom/asus/keyboard/KeyboardService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mTouchpadFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    .line 73
    new-instance v2, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;

    iget-object v3, p0, Lcom/asus/keyboard/KeyboardService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/asus/keyboard/KeyboardService$MuteFKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mMuteFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    .line 74
    new-instance v2, Lcom/asus/keyboard/KeyboardService$BrowserFKeyController;

    iget-object v3, p0, Lcom/asus/keyboard/KeyboardService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/asus/keyboard/KeyboardService$BrowserFKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mBrowserFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    .line 75
    new-instance v2, Lcom/asus/keyboard/KeyboardService$SettingsFKeyController;

    iget-object v3, p0, Lcom/asus/keyboard/KeyboardService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/asus/keyboard/KeyboardService$SettingsFKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mSettingsFKeyController:Lcom/asus/keyboard/KeyboardService$FKeyController;

    .line 77
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 79
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/high16 v2, 0x7f03

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mLayout:Landroid/view/View;

    .line 80
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mLayout:Landroid/view/View;

    const v3, 0x7f040001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mIcon:Landroid/widget/ImageView;

    .line 82
    const v2, 0x7f030001

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mLayoutBar:Landroid/view/View;

    .line 83
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mLayoutBar:Landroid/view/View;

    const v3, 0x7f040002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mIconBar:Landroid/widget/ImageView;

    .line 84
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mIconBar:Landroid/widget/ImageView;

    const v3, 0x7f020003

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mLayoutBar:Landroid/view/View;

    const v3, 0x7f040003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/asus/keyboard/BrightnessLevelView;

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mLevelView:Lcom/asus/keyboard/BrightnessLevelView;

    .line 86
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mLevelView:Lcom/asus/keyboard/BrightnessLevelView;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/asus/keyboard/BrightnessLevelView;->setMax(I)V

    .line 87
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .local v1, mtrx:Landroid/graphics/Matrix;
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 89
    const/high16 v2, 0x42b4

    const/high16 v3, 0x41a0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 90
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mIconBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 92
    new-instance v2, Landroid/widget/Toast;

    iget-object v3, p0, Lcom/asus/keyboard/KeyboardService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mToast:Landroid/widget/Toast;

    .line 93
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mToast:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 94
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 96
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService;->registerFunctionKeyIntentReceiver()V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 103
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService;->unregisterFunctionKeyIntentReceiver()V

    .line 104
    return-void
.end method
