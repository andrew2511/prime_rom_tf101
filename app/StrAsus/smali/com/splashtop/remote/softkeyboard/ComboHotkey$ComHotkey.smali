.class public final enum Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
.super Ljava/lang/Enum;
.source "ComboHotkey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/softkeyboard/ComboHotkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComHotkey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

.field public static final enum ALT_F4:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

.field public static final enum ALT_TAB:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

.field public static final enum BACK:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

.field public static final enum CTRL_ALT_DEL:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

.field public static final enum CTRL_C:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

.field public static final enum CTRL_V:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

.field public static final enum CTRL_X:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

.field public static final enum WIN_D:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const-string v1, "CTRL_C"

    invoke-direct {v0, v1, v3}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_C:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const-string v1, "CTRL_V"

    invoke-direct {v0, v1, v4}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_V:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const-string v1, "CTRL_X"

    invoke-direct {v0, v1, v5}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_X:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const-string v1, "ALT_TAB"

    invoke-direct {v0, v1, v6}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->ALT_TAB:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const-string v1, "ALT_F4"

    invoke-direct {v0, v1, v7}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->ALT_F4:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const-string v1, "WIN_D"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->WIN_D:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const-string v1, "CTRL_ALT_DEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_ALT_DEL:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const-string v1, "BACK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_C:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_V:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_X:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->ALT_TAB:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->ALT_F4:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->WIN_D:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->CTRL_ALT_DEL:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->$VALUES:[Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    return-object p0
.end method

.method public static values()[Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->$VALUES:[Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    invoke-virtual {v0}, [Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/splashtop/remote/softkeyboard/ComboHotkey$ComHotkey;

    return-object v0
.end method
