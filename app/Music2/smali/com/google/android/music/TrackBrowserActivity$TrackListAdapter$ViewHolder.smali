.class public Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field album:Lcom/google/android/music/StatefulShadowTextView;

.field public albumId:J

.field artist:Lcom/google/android/music/StatefulShadowTextView;

.field contextMenu:Landroid/widget/ImageView;

.field duration:Lcom/google/android/music/StatefulShadowTextView;

.field icon:Lcom/google/android/music/AsyncAlbumArtImageView;

.field play_indicator:Lcom/google/android/music/PlayingIndicator;

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

.field title:Lcom/google/android/music/StatefulShadowTextView;

.field titleBuffer:Landroid/database/CharArrayBuffer;

.field trackId:J

.field year:Lcom/google/android/music/StatefulShadowTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
