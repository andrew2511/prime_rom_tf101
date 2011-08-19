.class public Lcom/splashtop/remote/softkeyboard/Softkeyboard;
.super Ljava/lang/Object;
.source "Softkeyboard.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IRISView"


# instance fields
.field private mClinkListener:Landroid/view/View$OnClickListener;

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/splashtop/remote/softkeyboard/Softkeyboard$1;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/softkeyboard/Softkeyboard$1;-><init>(Lcom/splashtop/remote/softkeyboard/Softkeyboard;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mClinkListener:Landroid/view/View$OnClickListener;

    .line 28
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mConfig:Landroid/content/res/Configuration;

    .line 30
    invoke-direct {p0}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->initKeyboardIcon()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/softkeyboard/Softkeyboard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/softkeyboard/Softkeyboard;)Lcom/splashtop/remote/softkeyboard/HotkeySupport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    return-object v0
.end method

.method private initKeyboardIcon()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mImageView:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mClinkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method public enableHotkey(ILandroid/view/View;)V
    .locals 0
    .parameter "serverType"
    .parameter "parentView"

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->initHotkeySupport(ILandroid/view/View;)V

    .line 39
    return-void
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->finish(Z)Z

    .line 89
    :cond_0
    return-void
.end method

.method public initHotkeySupport(ILandroid/view/View;)V
    .locals 2
    .parameter "serverType"
    .parameter "parentView"

    .prologue
    .line 42
    new-instance v0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    .line 43
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->setConfig(Landroid/content/res/Configuration;)V

    .line 44
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v0, p1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->setServerType(I)V

    .line 45
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v0, p2}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->setParentView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method public isHotkeyShowing()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->isHotkeyShowing()Z

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 104
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p2}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public onRotateScreen(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v0, p1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->remakeHotkeyBitmap(Landroid/content/res/Configuration;)V

    .line 77
    :cond_0
    return-void
.end method

.method public releaseHotkey()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->releaseHotkey()V

    .line 118
    :cond_0
    return-void
.end method

.method public setOnClickCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v0, p1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->setOnClickCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;)V

    .line 112
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->getHotkeyView()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    invoke-virtual {v0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->getHotkeyView()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->mHotkey:Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->showHotkeyBar(I)V

    .line 83
    :cond_1
    return-void
.end method
