.class Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$1;
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
    .line 114
    iput-object p1, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$1;->this$1:Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$1;->this$1:Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;

    invoke-static {v2}, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;->access$100(Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$1;->this$1:Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;

    iget-object v2, v2, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-static {v2}, Lcom/android/vending/ParentalControlChecker;->access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$1;->this$1:Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;

    iget-object v1, v1, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-static {v1}, Lcom/android/vending/ParentalControlChecker;->access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    iget-object v1, p0, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor$1;->this$1:Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;

    iget-object v1, v1, Lcom/android/vending/ParentalControlChecker$PcAlertAccessor;->this$0:Lcom/android/vending/ParentalControlChecker;

    invoke-static {v1}, Lcom/android/vending/ParentalControlChecker;->access$000(Lcom/android/vending/ParentalControlChecker;)Lcom/android/vending/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/BaseActivity;->finish()V

    .line 122
    return-void
.end method
