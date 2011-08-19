.class Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDataDialogAccessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2048
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 2053
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2054
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0701be

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0701bf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0701c0

    new-instance v3, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor$2;

    invoke-direct {v3, p0}, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor$2;-><init>(Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0701c1

    new-instance v3, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor$1;

    invoke-direct {v3, p0}, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor$1;-><init>(Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2079
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 2083
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 2081
    return-void
.end method
