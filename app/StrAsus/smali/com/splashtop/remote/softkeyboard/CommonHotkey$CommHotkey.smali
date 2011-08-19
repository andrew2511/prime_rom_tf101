.class public final enum Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
.super Ljava/lang/Enum;
.source "CommonHotkey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/softkeyboard/CommonHotkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommHotkey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

.field public static final enum ALT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

.field public static final enum CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

.field public static final enum CTRL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

.field public static final enum DEL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

.field public static final enum DIRECTION:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

.field public static final enum ESC:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

.field public static final enum F1_12:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

.field public static final enum KEYBOARD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

.field public static final enum MORE:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

.field public static final enum SHIFT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const-string v1, "SHIFT"

    invoke-direct {v0, v1, v3}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->SHIFT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const-string v1, "CTRL"

    invoke-direct {v0, v1, v4}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CTRL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const-string v1, "CMD"

    invoke-direct {v0, v1, v5}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const-string v1, "ALT"

    invoke-direct {v0, v1, v6}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ALT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const-string v1, "ESC"

    invoke-direct {v0, v1, v7}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ESC:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const-string v1, "DEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->DEL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const-string v1, "F1_12"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->F1_12:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const-string v1, "DIRECTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->DIRECTION:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const-string v1, "MORE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->MORE:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    new-instance v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const-string v1, "KEYBOARD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->KEYBOARD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->SHIFT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CTRL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->CMD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ALT:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->ESC:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->DEL:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->F1_12:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->DIRECTION:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->MORE:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->KEYBOARD:Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->$VALUES:[Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    return-object p0
.end method

.method public static values()[Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->$VALUES:[Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    invoke-virtual {v0}, [Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/splashtop/remote/softkeyboard/CommonHotkey$CommHotkey;

    return-object v0
.end method
