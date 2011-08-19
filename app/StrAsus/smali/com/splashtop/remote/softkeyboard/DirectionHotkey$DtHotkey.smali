.class public final enum Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
.super Ljava/lang/Enum;
.source "DirectionHotkey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/softkeyboard/DirectionHotkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DtHotkey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

.field public static final enum BACK:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

.field public static final enum DOWN:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

.field public static final enum LEFT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

.field public static final enum RIGHT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

.field public static final enum UP:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->LEFT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->RIGHT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->UP:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v5}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->DOWN:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v6}, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->LEFT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->RIGHT:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->UP:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->DOWN:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->BACK:Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    aput-object v1, v0, v6

    sput-object v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->$VALUES:[Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    return-object p0
.end method

.method public static values()[Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->$VALUES:[Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    invoke-virtual {v0}, [Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/splashtop/remote/softkeyboard/DirectionHotkey$DtHotkey;

    return-object v0
.end method
