.class final enum Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;
.super Ljava/lang/Enum;
.source "MultiTouchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/touch/MultiTouchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

.field public static final enum UNDEFINED:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

.field public static final enum WHEEL:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

.field public static final enum ZOOM:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->UNDEFINED:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    new-instance v0, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    const-string v1, "ZOOM"

    invoke-direct {v0, v1, v3}, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->ZOOM:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    new-instance v0, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    const-string v1, "WHEEL"

    invoke-direct {v0, v1, v4}, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->WHEEL:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    sget-object v1, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->UNDEFINED:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->ZOOM:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->WHEEL:Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->$VALUES:[Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    return-object p0
.end method

.method public static values()[Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->$VALUES:[Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    invoke-virtual {v0}, [Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/splashtop/remote/touch/MultiTouchSupport$Mode;

    return-object v0
.end method
