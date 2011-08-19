.class Lcom/google/android/music/medialist/MediaList$1;
.super Lcom/google/android/music/medialist/MediaList$AsyncQueryTask;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/medialist/MediaList;->getCursorAsync(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/medialist/MediaList;

.field final synthetic val$callback:Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;


# direct methods
.method constructor <init>(Lcom/google/android/music/medialist/MediaList;Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/android/music/medialist/MediaList$1;->this$0:Lcom/google/android/music/medialist/MediaList;

    iput-object p2, p0, Lcom/google/android/music/medialist/MediaList$1;->val$callback:Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/medialist/MediaList$AsyncQueryTask;-><init>(Lcom/google/android/music/medialist/MediaList;Lcom/google/android/music/medialist/MediaList$1;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/google/android/music/medialist/MediaList$MediaCursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/music/medialist/MediaList$1;->val$callback:Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;

    invoke-interface {v0, p1}, Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;->onQueryComplete(Lcom/google/android/music/medialist/MediaList$MediaCursor;)V

    .line 265
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 261
    check-cast p1, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/MediaList$1;->onPostExecute(Lcom/google/android/music/medialist/MediaList$MediaCursor;)V

    return-void
.end method
