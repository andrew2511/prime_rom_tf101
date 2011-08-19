.class Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$1;
.super Ljava/lang/Object;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$1;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$1;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-static {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->access$400(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->onCreateContextMusicMenu(Landroid/view/View;)V

    .line 872
    return-void
.end method
