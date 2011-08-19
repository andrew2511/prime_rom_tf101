.class final enum Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;
.super Ljava/lang/Enum;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimLockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

.field public static final enum READY:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

.field public static final enum REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

.field public static final enum REQUIRE_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

.field public static final enum REQUIRE_PUK:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

.field public static final enum VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

.field public static final enum VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->READY:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    const-string v1, "REQUIRE_PIN"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    const-string v1, "REQUIRE_PUK"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    const-string v1, "REQUIRE_NEW_PIN"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    const-string v1, "VERIFY_NEW_PIN"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    const-string v1, "VERIFY_NEW_PIN_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->READY:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->$VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;
    .registers 2
    .parameter "name"

    .prologue
    .line 76
    const-class v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->$VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/SimUnlockScreen$SimLockState;

    return-object v0
.end method
