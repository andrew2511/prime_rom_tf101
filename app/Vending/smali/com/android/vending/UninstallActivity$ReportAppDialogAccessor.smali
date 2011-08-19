.class Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;
.super Ljava/lang/Object;
.source "UninstallActivity.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/UninstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportAppDialogAccessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/UninstallActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/UninstallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/UninstallActivity;Lcom/android/vending/UninstallActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;-><init>(Lcom/android/vending/UninstallActivity;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 347
    new-instance v0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;

    iget-object v1, p0, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;->this$0:Lcom/android/vending/UninstallActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor$ReportAppDialog;-><init>(Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;Landroid/content/Context;)V

    return-object v0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 351
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 353
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 355
    return-void
.end method
