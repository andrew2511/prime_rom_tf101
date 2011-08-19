.class Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/menu/MusicMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicMenuCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/TrackBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1265
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/music/TrackBrowserActivity;->onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    return v0
.end method
