.class Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field albumId:J

.field artistId:J

.field checkboxListener:Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

.field contextMenu:Landroid/widget/ImageView;

.field icon:Lcom/google/android/music/AsyncAlbumArtImageView;

.field keeponselector:Lcom/google/android/music/KeepOnCheckBox;

.field line1:Lcom/google/android/music/StatefulShadowTextView;

.field line2:Lcom/google/android/music/StatefulShadowTextView;

.field play_indicator:Lcom/google/android/music/PlayingIndicator;

.field final synthetic this$1:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->this$1:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
