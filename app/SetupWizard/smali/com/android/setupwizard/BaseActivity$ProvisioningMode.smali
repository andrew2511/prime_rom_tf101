.class public final enum Lcom/android/setupwizard/BaseActivity$ProvisioningMode;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizard/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProvisioningMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/setupwizard/BaseActivity$ProvisioningMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

.field public static final enum DISABLED:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

.field public static final enum EMULATOR:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

.field public static final enum OPTIONAL:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

.field public static final enum REQUIRED:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    new-instance v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    const-string v1, "REQUIRED"

    invoke-direct {v0, v1, v2}, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->REQUIRED:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    .line 225
    new-instance v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    const-string v1, "OPTIONAL"

    invoke-direct {v0, v1, v3}, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->OPTIONAL:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    .line 226
    new-instance v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->DISABLED:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    .line 227
    new-instance v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    const-string v1, "EMULATOR"

    invoke-direct {v0, v1, v5}, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->EMULATOR:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    .line 223
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    sget-object v1, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->REQUIRED:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->OPTIONAL:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->DISABLED:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->EMULATOR:Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->$VALUES:[Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

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
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/setupwizard/BaseActivity$ProvisioningMode;
    .locals 1
    .parameter

    .prologue
    .line 223
    const-class v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    return-object p0
.end method

.method public static values()[Lcom/android/setupwizard/BaseActivity$ProvisioningMode;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->$VALUES:[Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    invoke-virtual {v0}, [Lcom/android/setupwizard/BaseActivity$ProvisioningMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/setupwizard/BaseActivity$ProvisioningMode;

    return-object v0
.end method
