.class public Lcom/splashtop/remote/softkeyboard/HotkeySupport;
.super Ljava/lang/Object;
.source "HotkeySupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/softkeyboard/HotkeySupport$5;,
        Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;,
        Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;,
        Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;
    }
.end annotation


# static fields
.field public static final COMMON_BAR:I = 0x1

.field public static final DIRECTION_BAR:I = 0x3

.field public static final F1_12_BAR:I = 0x2

.field public static final MORE_BAR:I = 0x4


# instance fields
.field private commonTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

.field private mBarType:I

.field private mClickCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;

.field private mCommHotkey:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

.field private mCommonBar:Landroid/view/View;

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mHKContext:Lcom/splashtop/remote/softkeyboard/HKContext;

.field private mHotkeyView:Landroid/widget/PopupWindow;

.field private mParentView:Landroid/view/View;

.field private mServerType:I

.field private touchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport$3;-><init>(Lcom/splashtop/remote/softkeyboard/HotkeySupport;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->commonTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    .line 159
    new-instance v0, Lcom/splashtop/remote/softkeyboard/HotkeySupport$4;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport$4;-><init>(Lcom/splashtop/remote/softkeyboard/HotkeySupport;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->touchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    .line 31
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/splashtop/remote/softkeyboard/HKContext;

    invoke-direct {v0}, Lcom/splashtop/remote/softkeyboard/HKContext;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHKContext:Lcom/splashtop/remote/softkeyboard/HKContext;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/softkeyboard/HotkeySupport;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/softkeyboard/HotkeySupport;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method private getHotkeyBar(I)Landroid/view/View;
    .locals 6
    .parameter "barType"

    .prologue
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHKContext:Lcom/splashtop/remote/softkeyboard/HKContext;

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Lcom/splashtop/remote/softkeyboard/HKContext;->makeView(Landroid/content/res/Configuration;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 58
    :pswitch_0
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mCommHotkey:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    if-nez v3, :cond_0

    .line 59
    new-instance v3, Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mServerType:I

    invoke-direct {v3, v4, v5}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mCommHotkey:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    .line 60
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mCommHotkey:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mClickCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;

    invoke-virtual {v3, v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->setOnClickCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;)V

    .line 61
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mCommHotkey:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->commonTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    invoke-virtual {v3, v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->setOnTouchCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;)V

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHKContext:Lcom/splashtop/remote/softkeyboard/HKContext;

    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mCommHotkey:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    invoke-virtual {v3, v4}, Lcom/splashtop/remote/softkeyboard/HKContext;->setHotkey(Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;)V

    goto :goto_0

    .line 67
    :pswitch_1
    new-instance v2, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;

    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;-><init>(Landroid/content/Context;)V

    .line 68
    .local v2, funcHotkey:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->touchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    invoke-virtual {v2, v3}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->setOnTouchCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;)V

    .line 69
    new-instance v3, Lcom/splashtop/remote/softkeyboard/HotkeySupport$1;

    invoke-direct {v3, p0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport$1;-><init>(Lcom/splashtop/remote/softkeyboard/HotkeySupport;)V

    invoke-virtual {v2, v3}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->setOnReleaseCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;)V

    .line 76
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHKContext:Lcom/splashtop/remote/softkeyboard/HKContext;

    invoke-virtual {v3, v2}, Lcom/splashtop/remote/softkeyboard/HKContext;->setHotkey(Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;)V

    goto :goto_0

    .line 80
    .end local v2           #funcHotkey:Lcom/splashtop/remote/softkeyboard/FunctionHotkey;
    :pswitch_2
    new-instance v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;

    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;-><init>(Landroid/content/Context;)V

    .line 81
    .local v1, dtHotkey:Lcom/splashtop/remote/softkeyboard/DirectionHotkey;
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->touchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    invoke-virtual {v1, v3}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->setOnTouchCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;)V

    .line 82
    new-instance v3, Lcom/splashtop/remote/softkeyboard/HotkeySupport$2;

    invoke-direct {v3, p0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport$2;-><init>(Lcom/splashtop/remote/softkeyboard/HotkeySupport;)V

    invoke-virtual {v1, v3}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->setOnReleaseCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;)V

    .line 89
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHKContext:Lcom/splashtop/remote/softkeyboard/HKContext;

    invoke-virtual {v3, v1}, Lcom/splashtop/remote/softkeyboard/HKContext;->setHotkey(Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;)V

    goto :goto_0

    .line 93
    .end local v1           #dtHotkey:Lcom/splashtop/remote/softkeyboard/DirectionHotkey;
    :pswitch_3
    new-instance v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;

    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/splashtop/remote/softkeyboard/ComboHotkey;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, comboHotkey:Lcom/splashtop/remote/softkeyboard/ComboHotkey;
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->touchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    invoke-virtual {v0, v3}, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->setOnTouchCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;)V

    .line 95
    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHKContext:Lcom/splashtop/remote/softkeyboard/HKContext;

    invoke-virtual {v3, v0}, Lcom/splashtop/remote/softkeyboard/HKContext;->setHotkey(Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public finish(Z)Z
    .locals 1
    .parameter "isReleaseKey"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 171
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->releaseHotkey()V

    .line 172
    :cond_0
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHotkeyView()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public isHotkeyShowing()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseHotkey()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mCommHotkey:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mCommHotkey:Lcom/splashtop/remote/softkeyboard/CommonHotkey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->releaseHotkey(Z)V

    .line 189
    :cond_0
    return-void
.end method

.method public remakeHotkeyBitmap(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->finish(Z)Z

    .line 124
    iget v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mBarType:I

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->showHotkeyBar(I)V

    .line 125
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mParentView:Landroid/view/View;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 127
    :cond_0
    return-void
.end method

.method public setConfig(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mConfig:Landroid/content/res/Configuration;

    .line 49
    return-void
.end method

.method public setOnClickCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mClickCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;

    .line 45
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0
    .parameter "parentView"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mParentView:Landroid/view/View;

    .line 41
    return-void
.end method

.method public setServerType(I)V
    .locals 0
    .parameter "serverType"

    .prologue
    .line 36
    iput p1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mServerType:I

    .line 37
    return-void
.end method

.method public showHotkeyBar(I)V
    .locals 5
    .parameter "barType"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 105
    iput p1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mBarType:I

    .line 107
    if-ne p1, v2, :cond_1

    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mCommonBar:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mCommonBar:Landroid/view/View;

    .line 113
    .local v0, hotkeyBar:Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 114
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mParentView:Landroid/view/View;

    const/16 v3, 0x33

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 119
    return-void

    .line 110
    .end local v0           #hotkeyBar:Landroid/view/View;
    :cond_1
    invoke-direct {p0, p1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->getHotkeyBar(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .restart local v0       #hotkeyBar:Landroid/view/View;
    if-ne p1, v2, :cond_0

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mCommonBar:Landroid/view/View;

    goto :goto_0

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->mHotkeyView:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method
