.class Lcom/android/vending/MultipleInstallTracker$Holder;
.super Ljava/lang/Object;
.source "MultipleInstallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/MultipleInstallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static instance:Lcom/android/vending/MultipleInstallTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/android/vending/MultipleInstallTracker;

    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/vending/MultipleInstallTracker;-><init>(Landroid/content/Context;Lcom/android/vending/MultipleInstallTracker$1;)V

    sput-object v0, Lcom/android/vending/MultipleInstallTracker$Holder;->instance:Lcom/android/vending/MultipleInstallTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/vending/MultipleInstallTracker;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/vending/MultipleInstallTracker$Holder;->instance:Lcom/android/vending/MultipleInstallTracker;

    return-object v0
.end method
