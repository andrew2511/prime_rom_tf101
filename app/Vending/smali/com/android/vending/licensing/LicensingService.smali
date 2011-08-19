.class public Lcom/android/vending/licensing/LicensingService;
.super Landroid/app/Service;
.source "LicensingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/licensing/LicensingService$AsynchLicenseChecker;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/android/vending/licensing/ILicensingService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lcom/android/vending/licensing/LicensingService$1;

    invoke-direct {v0, p0}, Lcom/android/vending/licensing/LicensingService$1;-><init>(Lcom/android/vending/licensing/LicensingService;)V

    iput-object v0, p0, Lcom/android/vending/licensing/LicensingService;->mBinder:Lcom/android/vending/licensing/ILicensingService$Stub;

    .line 52
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/vending/licensing/LicensingService;->mBinder:Lcom/android/vending/licensing/ILicensingService$Stub;

    return-object v0
.end method
