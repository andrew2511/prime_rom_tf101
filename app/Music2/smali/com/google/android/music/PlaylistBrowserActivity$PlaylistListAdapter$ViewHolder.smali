.class Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field albumId:J

.field checkboxListener:Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

.field contextMenu:Landroid/widget/ImageView;

.field icon:Lcom/google/android/music/AsyncAlbumArtImageView;

.field keeponselector:Lcom/google/android/music/KeepOnCheckBox;

.field line1:Landroid/widget/TextView;

.field playlistId:J

.field final synthetic this$1:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->this$1:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
