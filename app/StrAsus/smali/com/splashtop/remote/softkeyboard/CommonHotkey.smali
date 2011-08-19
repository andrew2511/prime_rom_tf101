.class public Lcom/splashtop/remote/softkeyboard/CommonHotkey;
.super Lcom/splashtop/remote/softkeyboard/Hotkey;
.source "CommonHotkey.java"

# interfaces
.implements Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    }
.end annotation


# instance fields
.field private mClickCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;

.field private mCommonTouchListener:Landroid/view/View$OnTouchListener;

.field private mContext:Landroid/content/Context;

.field private mHotkeyCodeMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;",
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
            "Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;",
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
            "Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHotkeyStatus:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHotkeyTouchListener:Landroid/view/View$OnTouchListener;

.field private mHotkeyViewMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "serverType"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/splashtop/remote/softkeyboard/Hotkey;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$1;-><init>(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyTouchListener:Landroid/view/View$OnTouchListener;

    .line 186
    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$2;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$2;-><init>(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mCommonTouchListener:Landroid/view/View$OnTouchListener;

    .line 35
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0, p2}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->initHotkey(I)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyStatus:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mClickCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/splashtop/remote/softkeyboard/CommonHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    return-object v0
.end method

.method private initHotkey(I)V
    .locals 7
    .parameter "serverType"

    .prologue
    const v6, 0x7f020076

    const v5, 0x7f020075

    const/16 v4, 0x5c

    const/4 v3, 0x0

    .line 48
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    .line 49
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    .line 50
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    .line 51
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyStatus:Ljava/util/EnumMap;

    .line 53
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->SHIFT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f02006e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->SHIFT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f02006f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->SHIFT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyStatus:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->SHIFT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CTRL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CTRL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f020018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CTRL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const/16 v2, 0x71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyStatus:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CTRL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f020058

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f020059

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyStatus:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ALT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f020003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ALT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f020006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ALT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyStatus:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ALT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ESC:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f02002a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ESC:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f02002b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ESC:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->DEL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f02001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->DEL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f02001e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->DEL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const/16 v2, 0x5e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->F1_12:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f020033

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->F1_12:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f020034

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->DIRECTION:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f02001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->DIRECTION:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f020020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->MORE:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f02005a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->MORE:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f02005b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->KEYBOARD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f020053

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->KEYBOARD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const v2, 0x7f020054

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method public getHotkeyView(Landroid/content/res/Configuration;)Landroid/view/View;
    .locals 10
    .parameter "config"

    .prologue
    const/4 v9, -0x2

    .line 107
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 108
    .local v2, hotKeyLayout:Landroid/widget/LinearLayout;
    const/high16 v8, 0x7f06

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 109
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v1, hotKeyLP:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f80

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 114
    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 115
    const/high16 v6, 0x3f80

    .line 119
    .local v6, scale:F
    :goto_0
    new-instance v8, Ljava/util/EnumMap;

    const-class v9, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v8, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyViewMap:Ljava/util/EnumMap;

    .line 120
    invoke-static {}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->values()[Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    move-result-object v0

    .local v0, arr$:[Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v4, v0, v3

    .line 121
    .local v4, id:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    invoke-virtual {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v9

    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v9, v8, v6}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->makeHotkeyViewFor9Drawable(IIF)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 122
    .local v7, view:Landroid/widget/ImageView;
    invoke-virtual {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v8

    sget-object v9, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->F1_12:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-virtual {v9}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v9

    if-lt v8, v9, :cond_2

    invoke-virtual {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v8

    sget-object v9, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->KEYBOARD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-virtual {v9}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v9

    if-gt v8, v9, :cond_2

    .line 123
    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mCommonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    :goto_2
    invoke-virtual {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v8

    sget-object v9, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->SHIFT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-virtual {v9}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v8

    sget-object v9, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ALT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-virtual {v9}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ordinal()I

    move-result v9

    if-gt v8, v9, :cond_0

    .line 128
    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyViewMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    invoke-virtual {v2, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 117
    .end local v0           #arr$:[Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    .end local v3           #i$:I
    .end local v4           #id:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    .end local v5           #len$:I
    .end local v6           #scale:F
    .end local v7           #view:Landroid/widget/ImageView;
    :cond_1
    const v6, 0x3fa66666

    .restart local v6       #scale:F
    goto :goto_0

    .line 125
    .restart local v0       #arr$:[Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    .restart local v3       #i$:I
    .restart local v4       #id:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    .restart local v5       #len$:I
    .restart local v7       #view:Landroid/widget/ImageView;
    :cond_2
    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 132
    .end local v4           #id:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    .end local v7           #view:Landroid/widget/ImageView;
    :cond_3
    return-object v2
.end method

.method public releaseHotkey(Z)V
    .locals 5
    .parameter "isInclueView"

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mClickCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;

    invoke-interface {v2, v4}, Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;->setHotkeyPressed(Z)V

    .line 212
    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyStatus:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    .line 213
    .local v1, id:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyStatus:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyViewMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    invoke-virtual {v3, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->invalidate(Landroid/view/View;I)V

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyStatus:Ljava/util/EnumMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/4 v3, 0x2

    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    goto :goto_0

    .line 219
    .end local v1           #id:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    :cond_2
    return-void
.end method

.method public setOnClickCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;)V
    .locals 0
    .parameter "mCallback"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mClickCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyClickCallback;

    .line 41
    return-void
.end method

.method public setOnTouchCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;)V
    .locals 0
    .parameter "mCallback"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey;->mTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    .line 45
    return-void
.end method
