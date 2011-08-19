.class Lcom/google/android/music/TrackBrowserActivity$1;
.super Landroid/database/ContentObserver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 198
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$1$1;-><init>(Lcom/google/android/music/TrackBrowserActivity$1;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 211
    return-void
.end method
