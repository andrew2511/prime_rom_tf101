.class final enum Lcom/splashtop/remote/touch/TouchSupport$Mode;
.super Ljava/lang/Enum;
.source "TouchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/touch/TouchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/splashtop/remote/touch/TouchSupport$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/splashtop/remote/touch/TouchSupport$Mode;

.field public static final enum DOUBLE_CLICK:Lcom/splashtop/remote/touch/TouchSupport$Mode;

.field public static final enum DRAG:Lcom/splashtop/remote/touch/TouchSupport$Mode;

.field public static final enum LONG_CLICK:Lcom/splashtop/remote/touch/TouchSupport$Mode;

.field public static final enum PAN:Lcom/splashtop/remote/touch/TouchSupport$Mode;

.field public static final enum UNDEFINED:Lcom/splashtop/remote/touch/TouchSupport$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/touch/TouchSupport$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;->UNDEFINED:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    new-instance v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;

    const-string v1, "PAN"

    invoke-direct {v0, v1, v3}, Lcom/splashtop/remote/touch/TouchSupport$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;->PAN:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    new-instance v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;

    const-string v1, "DRAG"

    invoke-direct {v0, v1, v4}, Lcom/splashtop/remote/touch/TouchSupport$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;->DRAG:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    new-instance v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;

    const-string v1, "DOUBLE_CLICK"

    invoke-direct {v0, v1, v5}, Lcom/splashtop/remote/touch/TouchSupport$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;->DOUBLE_CLICK:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    new-instance v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;

    const-string v1, "LONG_CLICK"

    invoke-direct {v0, v1, v6}, Lcom/splashtop/remote/touch/TouchSupport$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;->LONG_CLICK:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/splashtop/remote/touch/TouchSupport$Mode;

    sget-object v1, Lcom/splashtop/remote/touch/TouchSupport$Mode;->UNDEFINED:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/splashtop/remote/touch/TouchSupport$Mode;->PAN:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/splashtop/remote/touch/TouchSupport$Mode;->DRAG:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/splashtop/remote/touch/TouchSupport$Mode;->DOUBLE_CLICK:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/splashtop/remote/touch/TouchSupport$Mode;->LONG_CLICK:Lcom/splashtop/remote/touch/TouchSupport$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;->$VALUES:[Lcom/splashtop/remote/touch/TouchSupport$Mode;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/splashtop/remote/touch/TouchSupport$Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/splashtop/remote/touch/TouchSupport$Mode;

    return-object p0
.end method

.method public static values()[Lcom/splashtop/remote/touch/TouchSupport$Mode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/splashtop/remote/touch/TouchSupport$Mode;->$VALUES:[Lcom/splashtop/remote/touch/TouchSupport$Mode;

    invoke-virtual {v0}, [Lcom/splashtop/remote/touch/TouchSupport$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/splashtop/remote/touch/TouchSupport$Mode;

    return-object v0
.end method
