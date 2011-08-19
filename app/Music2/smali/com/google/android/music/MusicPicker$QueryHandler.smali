.class final Lcom/google/android/music/MusicPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPicker;


# direct methods
.method public constructor <init>(Lcom/google/android/music/MusicPicker;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    .line 318
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 319
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    iget-object v0, v0, Lcom/google/android/music/MusicPicker;->mAdapter:Lcom/google/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 327
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    iget-object v0, v0, Lcom/google/android/music/MusicPicker;->mAdapter:Lcom/google/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, p3}, Lcom/google/android/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 328
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 331
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    iget-object v0, v0, Lcom/google/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    iget-object v1, v1, Lcom/google/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 333
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    iget-boolean v0, v0, Lcom/google/android/music/MusicPicker;->mListHasFocus:Z

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    iput-boolean v2, v0, Lcom/google/android/music/MusicPicker;->mListHasFocus:Z

    .line 337
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$QueryHandler;->this$0:Lcom/google/android/music/MusicPicker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 340
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
