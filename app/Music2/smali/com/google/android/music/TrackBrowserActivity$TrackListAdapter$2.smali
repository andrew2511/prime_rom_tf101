.class Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->onStreamabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 1835
    return-void
.end method
