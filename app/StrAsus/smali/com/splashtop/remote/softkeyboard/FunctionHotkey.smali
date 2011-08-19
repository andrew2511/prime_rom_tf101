.class public Lcom/splashtop/remote/softkeyboard/FunctionHotkey;
.super Lcom/splashtop/remote/softkeyboard/Hotkey;
.source "FunctionHotkey.java"

# interfaces
.implements Lcom/splashtop/remote/softkeyboard/IHotkeyDispatch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;
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
            "Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;",
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
            "Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;",
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
            "Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;",
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
    .line 29
    invoke-direct {p0, p1}, Lcom/splashtop/remote/softkeyboard/Hotkey;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$1;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$1;-><init>(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyClickListener:Landroid/view/View$OnTouchListener;

    .line 163
    new-instance v0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$2;

    invoke-direct {v0, p0}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$2;-><init>(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mBackTouchListener:Landroid/view/View$OnTouchListener;

    .line 30
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->initHotkey()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mReleaseCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Ljava/util/EnumMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/splashtop/remote/softkeyboard/FunctionHotkey;)Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    return-object v0
.end method

.method private initHotkey()V
    .locals 4

    .prologue
    const v3, 0x7f02000c

    .line 43
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    .line 44
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    .line 45
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    .line 47
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F1:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f02002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F1:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020035

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F1:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x83

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F2:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020036

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F2:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F2:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x84

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F3:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020038

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F3:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020039

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F3:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x85

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F4:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f02003a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F4:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f02003b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F4:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x86

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f02000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F5:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f02003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F5:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f02003d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F5:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x87

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F6:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f02003e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F6:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f02003f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F6:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x88

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F7:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020040

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F7:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020041

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F7:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x89

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F8:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F8:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020043

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F8:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x8a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F9:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020044

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F9:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020045

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F9:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F10:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f02002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F10:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f02002e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F10:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x8c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F11:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f02002f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F11:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020030

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F11:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x8d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F12:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020031

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyOResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F12:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const v2, 0x7f020032

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyCodeMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->F12:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    const/16 v2, 0x8e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->UNDEFINED:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method


# virtual methods
.method public getHotkeyView(Landroid/content/res/Configuration;)Landroid/view/View;
    .locals 13
    .parameter "config"

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x2

    .line 104
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mContext:Landroid/content/Context;

    invoke-direct {v2, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, hotKeyLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    const/high16 v10, 0x7f06

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 107
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v1, hotKeyLP:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x3f80

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 112
    iget v10, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v12, :cond_0

    .line 113
    const v8, 0x3fd9999a

    .line 117
    .local v8, scale:F
    :goto_0
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    .local v4, hotKeyLayoutTop:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mContext:Landroid/content/Context;

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .local v3, hotKeyLayoutButtom:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->values()[Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    move-result-object v0

    .local v0, arr$:[Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v6, v0, v5

    .line 120
    .local v6, id:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;
    invoke-virtual {v6}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->ordinal()I

    move-result v11

    iget-object v10, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyResMap:Ljava/util/EnumMap;

    invoke-virtual {v10, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v11, v10, v8}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->makeHotkeyViewFor9Drawable(IIF)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 121
    .local v9, view:Landroid/widget/ImageView;
    sget-object v10, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    if-ne v6, v10, :cond_1

    .line 122
    iget-object v10, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mBackTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    :goto_2
    invoke-virtual {v6}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->ordinal()I

    move-result v10

    sget-object v11, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    invoke-virtual {v11}, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->ordinal()I

    move-result v11

    if-gt v10, v11, :cond_3

    invoke-virtual {v4, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 115
    .end local v0           #arr$:[Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;
    .end local v3           #hotKeyLayoutButtom:Landroid/widget/LinearLayout;
    .end local v4           #hotKeyLayoutTop:Landroid/widget/LinearLayout;
    .end local v5           #i$:I
    .end local v6           #id:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;
    .end local v7           #len$:I
    .end local v8           #scale:F
    .end local v9           #view:Landroid/widget/ImageView;
    :cond_0
    const v8, 0x40333333

    .restart local v8       #scale:F
    goto :goto_0

    .line 123
    .restart local v0       #arr$:[Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;
    .restart local v3       #hotKeyLayoutButtom:Landroid/widget/LinearLayout;
    .restart local v4       #hotKeyLayoutTop:Landroid/widget/LinearLayout;
    .restart local v5       #i$:I
    .restart local v6       #id:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;
    .restart local v7       #len$:I
    .restart local v9       #view:Landroid/widget/ImageView;
    :cond_1
    sget-object v10, Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;->UNDEFINED:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;

    if-ne v6, v10, :cond_2

    .line 124
    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 126
    :cond_2
    iget-object v10, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mHotkeyClickListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {v3, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 131
    .end local v6           #id:Lcom/splashtop/remote/softkeyboard/FunctionHotkey$FuncHotkey;
    .end local v9           #view:Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    return-object v2
.end method

.method public releaseHotkey(Z)V
    .locals 0
    .parameter "isInclueView"

    .prologue
    .line 190
    return-void
.end method

.method public setOnReleaseCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;)V
    .locals 0
    .parameter "mReleaseCallback"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mReleaseCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$ReleaseHotkeyCallback;

    .line 40
    return-void
.end method

.method public setOnTouchCallback(Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;)V
    .locals 0
    .parameter "mTouchCallback"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/FunctionHotkey;->mTouchCallback:Lcom/splashtop/remote/softkeyboard/HotkeySupport$HotkeyTouchCallback;

    .line 36
    return-void
.end method
