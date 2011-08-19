.class public Lcom/splashtop/remote/softkeyboard/DirectionHotkey;
.super Lcom/splashtop/remote/softkeyboard/Hotkey;
.source "DirectionHotkey.java"

# interfaces
.implements Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
    }
.end annotation


# instance fields
.field private mBackTouchListener:Landroid/view/View$OnTouchListener;

.field private mContext:Landroid/content/Context;

.field private mHotkeyClickListener:Landroid/view/View$OnTouchListener;

.field private mHotkeyCodeMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHotkeyOResMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHotkeyResMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReleaseCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;

.field private mTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/splashtop/remote/softkeyboard/Hotkey;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$1;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$1;-><init>(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyClickListener:Landroid/view/View$OnTouchListener;

    .line 122
    new-instance v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$2;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$2;-><init>(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mBackTouchListener:Landroid/view/View$OnTouchListener;

    .line 31
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->initHotkey()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mReleaseCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/splashtop/remote/softkeyboard/DirectionHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    return-object v0
.end method

.method private initHotkey()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    .line 45
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    .line 46
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    .line 48
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->LEFT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const v2, 0x7f020055

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->LEFT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const v2, 0x7f020056

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->LEFT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->RIGHT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const v2, 0x7f02006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->RIGHT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const v2, 0x7f02006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->RIGHT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->UP:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const v2, 0x7f020071

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->UP:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const v2, 0x7f020072

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->UP:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->DOWN:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const v2, 0x7f020021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->DOWN:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const v2, 0x7f020022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->DOWN:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const v2, 0x7f02000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const v2, 0x7f02000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method


# virtual methods
.method public getHotkeyView(Landroid/content/res/Configuration;)Landroid/view/View;
    .locals 10
    .parameter "config"

    .prologue
    const/4 v9, -0x2

    .line 71
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v2, hotKeyLayout:Landroid/widget/LinearLayout;
    const/high16 v8, 0x7f06

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 73
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v1, hotKeyLP:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f80

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 78
    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 79
    const v6, 0x3fd9999a

    .line 83
    .local v6, scale:F
    :goto_0
    invoke-static {}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->values()[Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    move-result-object v0

    .local v0, arr$:[Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 84
    .local v4, id:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
    invoke-virtual {v4}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->ordinal()I

    move-result v9

    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v9, v8, v6}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->makeHotkeyViewFor9Drawable(IIF)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 85
    .local v7, view:Landroid/widget/ImageView;
    sget-object v8, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    if-ne v4, v8, :cond_1

    .line 86
    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mBackTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    :goto_2
    invoke-virtual {v2, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    .end local v0           #arr$:[Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
    .end local v3           #i$:I
    .end local v4           #id:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
    .end local v5           #len$:I
    .end local v6           #scale:F
    .end local v7           #view:Landroid/widget/ImageView;
    :cond_0
    const v6, 0x40333333

    .restart local v6       #scale:F
    goto :goto_0

    .line 88
    .restart local v0       #arr$:[Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
    .restart local v3       #i$:I
    .restart local v4       #id:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
    .restart local v5       #len$:I
    .restart local v7       #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mHotkeyClickListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 92
    .end local v4           #id:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
    .end local v7           #view:Landroid/widget/ImageView;
    :cond_2
    return-object v2
.end method

.method public releaseHotkey(Z)V
    .locals 0
    .parameter "isInclueView"

    .prologue
    .line 149
    return-void
.end method

.method public setOnReleaseCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;)V
    .locals 0
    .parameter "mReleaseCallback"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mReleaseCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;

    .line 37
    return-void
.end method

.method public setOnTouchCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;)V
    .locals 0
    .parameter "mTouchCallback"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey;->mTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    .line 41
    return-void
.end method
