.class Lcom/google/android/music/TrackBrowserActivity$15;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$15;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Lcom/google/android/music/medialist/MediaList$MediaCursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$15;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 1349
    return-void
.end method
