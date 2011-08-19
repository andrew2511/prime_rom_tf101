.class public Lcom/google/android/music/store/KeepOnUpdater$SyncListener;
.super Landroid/app/IntentService;
.source "KeepOnUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/KeepOnUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 479
    const-string v0, "KeepOnUpdater"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 480
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/music/store/KeepOnUpdater;->access$000(Landroid/content/Context;Z)V

    .line 485
    return-void
.end method
