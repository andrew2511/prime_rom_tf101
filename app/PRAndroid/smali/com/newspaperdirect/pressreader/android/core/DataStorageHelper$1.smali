.class Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "DataStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->startWatchingExternalStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 196
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->access$0()V

    .line 197
    return-void
.end method
