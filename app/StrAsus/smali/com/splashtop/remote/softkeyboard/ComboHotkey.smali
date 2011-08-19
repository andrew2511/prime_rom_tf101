.class public Lcom/splashtop/remote/softkeyboard/ComboHotkey;
.super Lcom/splashtop/remote/softkeyboard/Hotkey;
.source "ComboHotkey.java"

# interfaces
.implements Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
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
            "Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;",
            "[I>;"
        }
    .end annotation
.end field

.field private mHotkeyOResMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;",
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
            "Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/splashtop/remote/softkeyboard/Hotkey;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$1;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$1;-><init>(Lcom/splashtop/remote/softkeyboard/ComboHotkey;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyClickListener:Landroid/view/View$OnTouchListener;

    .line 140
    new-instance v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$2;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$2;-><init>(Lcom/splashtop/remote/softkeyboard/ComboHotkey;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mBackTouchListener:Landroid/view/View$OnTouchListener;

    .line 30
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->initHotkey()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/softkeyboard/ComboHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/softkeyboard/ComboHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/splashtop/remote/softkeyboard/ComboHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/splashtop/remote/softkeyboard/ComboHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    return-object v0
.end method

.method private initHotkey()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 39
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    .line 40
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    .line 41
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    .line 43
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_C:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f020016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_C:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f020017

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_C:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_V:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f020019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_V:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f02001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_V:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_X:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f02001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_X:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f02001c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_X:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->ALT_TAB:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f020007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->ALT_TAB:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f020008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->ALT_TAB:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->ALT_F4:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f020004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->ALT_F4:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f020005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->ALT_F4:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->WIN_D:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f020073

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->WIN_D:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f020074

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->WIN_D:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_ALT_DEL:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f020014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_ALT_DEL:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f020015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_ALT_DEL:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f02000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const v2, 0x7f02000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void

    .line 45
    :array_0
    .array-data 0x4
        0x71t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_1
    .array-data 0x4
        0x71t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_2
    .array-data 0x4
        0x71t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
    .end array-data

    .line 57
    :array_3
    .array-data 0x4
        0x39t 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_4
    .array-data 0x4
        0x39t 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_5
    .array-data 0x4
        0x5ct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 69
    :array_6
    .array-data 0x4
        0x71t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getHotkeyView(Landroid/content/res/Configuration;)Landroid/view/View;
    .locals 10
    .parameter "config"

    .prologue
    const/4 v9, -0x2

    .line 78
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    .local v2, hotKeyLayout:Landroid/widget/LinearLayout;
    const/high16 v8, 0x7f06

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 80
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v1, hotKeyLP:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f80

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 85
    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 86
    const v6, 0x3fd9999a

    .line 90
    .local v6, scale:F
    :goto_0
    invoke-static {}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->values()[Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    move-result-object v0

    .local v0, arr$:[Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 91
    .local v4, id:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
    invoke-virtual {v4}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->ordinal()I

    move-result v9

    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v9, v8, v6}, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->makeHotkeyViewFor9Drawable(IIF)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 92
    .local v7, view:Landroid/widget/ImageView;
    sget-object v8, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    if-ne v4, v8, :cond_1

    .line 93
    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mBackTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    :goto_2
    invoke-virtual {v2, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    .end local v0           #arr$:[Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
    .end local v3           #i$:I
    .end local v4           #id:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
    .end local v5           #len$:I
    .end local v6           #scale:F
    .end local v7           #view:Landroid/widget/ImageView;
    :cond_0
    const v6, 0x40333333

    .restart local v6       #scale:F
    goto :goto_0

    .line 95
    .restart local v0       #arr$:[Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
    .restart local v3       #i$:I
    .restart local v4       #id:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
    .restart local v5       #len$:I
    .restart local v7       #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v8, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mHotkeyClickListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 99
    .end local v4           #id:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
    .end local v7           #view:Landroid/widget/ImageView;
    :cond_2
    return-object v2
.end method

.method public releaseHotkey(Z)V
    .locals 0
    .parameter "isInclueView"

    .prologue
    .line 167
    return-void
.end method

.method public setOnTouchCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;)V
    .locals 0
    .parameter "mTouchCallback"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey;->mTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    .line 36
    return-void
.end method
