.class Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;->create()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;)V
    .locals 0
    .parameter

    .prologue
    .line 2069
    iput-object p1, p0, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor$1;->this$1:Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor$1;->this$1:Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;

    iget-object v0, v0, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity;->finish()V

    .line 2073
    return-void
.end method
