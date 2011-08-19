.class Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$2;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->onStreamabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 954
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$2;->this$1:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$2;->this$1:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->notifyDataSetChanged()V

    .line 957
    return-void
.end method
