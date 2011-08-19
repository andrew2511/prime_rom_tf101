.class Lcom/android/i18n/addressinput/AddressWidget$3;
.super Ljava/lang/Object;
.source "AddressWidget.java"

# interfaces
.implements Lcom/android/i18n/addressinput/DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/addressinput/AddressWidget;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/AddressWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataLoadingBegin()V
    .locals 5

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressWidget;->access$700(Lcom/android/i18n/addressinput/AddressWidget;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-static {v3}, Lcom/android/i18n/addressinput/AddressWidget;->access$700(Lcom/android/i18n/addressinput/AddressWidget;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->access$602(Lcom/android/i18n/addressinput/AddressWidget;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 515
    return-void
.end method

.method public dataLoadingEnd()V
    .locals 2

    .prologue
    .line 517
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data loading completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-static {v0}, Lcom/android/i18n/addressinput/AddressWidget;->access$600(Lcom/android/i18n/addressinput/AddressWidget;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 519
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v0, v0, Lcom/android/i18n/addressinput/AddressWidget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, v1, Lcom/android/i18n/addressinput/AddressWidget;->mUpdateMultipleFields:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    return-void
.end method
