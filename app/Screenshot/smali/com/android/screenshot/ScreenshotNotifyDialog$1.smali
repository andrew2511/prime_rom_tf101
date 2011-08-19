.class Lcom/android/screenshot/ScreenshotNotifyDialog$1;
.super Ljava/lang/Object;
.source "ScreenshotNotifyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/screenshot/ScreenshotNotifyDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/screenshot/ScreenshotNotifyDialog;


# direct methods
.method constructor <init>(Lcom/android/screenshot/ScreenshotNotifyDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/screenshot/ScreenshotNotifyDialog$1;->this$0:Lcom/android/screenshot/ScreenshotNotifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/screenshot/ScreenshotNotifyDialog$1;->this$0:Lcom/android/screenshot/ScreenshotNotifyDialog;

    invoke-virtual {v0}, Lcom/android/screenshot/ScreenshotNotifyDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screenshot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    iget-object v0, p0, Lcom/android/screenshot/ScreenshotNotifyDialog$1;->this$0:Lcom/android/screenshot/ScreenshotNotifyDialog;

    invoke-virtual {v0}, Lcom/android/screenshot/ScreenshotNotifyDialog;->finish()V

    .line 44
    return-void
.end method
