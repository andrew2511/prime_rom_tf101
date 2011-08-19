.class final enum Lcom/android/vending/UninstallActivity$UninstallState;
.super Ljava/lang/Enum;
.source "UninstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/UninstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UninstallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/UninstallActivity$UninstallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/UninstallActivity$UninstallState;

.field public static final enum UNINSTALL_PROGRESS:Lcom/android/vending/UninstallActivity$UninstallState;

.field public static final enum UNINSTALL_STATUS:Lcom/android/vending/UninstallActivity$UninstallState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/android/vending/UninstallActivity$UninstallState;

    const-string v1, "UNINSTALL_PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/UninstallActivity$UninstallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/UninstallActivity$UninstallState;->UNINSTALL_PROGRESS:Lcom/android/vending/UninstallActivity$UninstallState;

    .line 56
    new-instance v0, Lcom/android/vending/UninstallActivity$UninstallState;

    const-string v1, "UNINSTALL_STATUS"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/UninstallActivity$UninstallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/UninstallActivity$UninstallState;->UNINSTALL_STATUS:Lcom/android/vending/UninstallActivity$UninstallState;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/vending/UninstallActivity$UninstallState;

    sget-object v1, Lcom/android/vending/UninstallActivity$UninstallState;->UNINSTALL_PROGRESS:Lcom/android/vending/UninstallActivity$UninstallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/UninstallActivity$UninstallState;->UNINSTALL_STATUS:Lcom/android/vending/UninstallActivity$UninstallState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/vending/UninstallActivity$UninstallState;->$VALUES:[Lcom/android/vending/UninstallActivity$UninstallState;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/UninstallActivity$UninstallState;
    .locals 1
    .parameter

    .prologue
    .line 54
    const-class v0, Lcom/android/vending/UninstallActivity$UninstallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/UninstallActivity$UninstallState;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/UninstallActivity$UninstallState;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/vending/UninstallActivity$UninstallState;->$VALUES:[Lcom/android/vending/UninstallActivity$UninstallState;

    invoke-virtual {v0}, [Lcom/android/vending/UninstallActivity$UninstallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/UninstallActivity$UninstallState;

    return-object v0
.end method
