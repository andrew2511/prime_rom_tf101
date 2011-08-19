.class Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$2;
.super Ljava/lang/Object;
.source "ParentalControlChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;->create()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$2;->this$1:Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$2;->this$1:Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;

    iget-object v0, v0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-static {v0}, Lcom/android/vending/ParentalControlChecker;->access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity;->finish()V

    .line 110
    return-void
.end method
