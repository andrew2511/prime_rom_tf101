.class Lcom/google/android/voicesearch/SoundManager$1;
.super Landroid/os/AsyncTask;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mTaskSounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/voicesearch/SoundManager;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/SoundManager;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/SoundManager$1;->mTaskSounds:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/SoundManager$1;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 52
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 53
    new-instance v3, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;

    iget-object v4, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    iget-object v5, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    invoke-static {v5}, Lcom/google/android/voicesearch/SoundManager;->access$000(Lcom/google/android/voicesearch/SoundManager;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;-><init>(Lcom/google/android/voicesearch/SoundManager;Landroid/content/Context;I)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/voicesearch/SoundManager$1;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {v3}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->release()V

    move-object v0, v7

    .line 66
    :goto_1
    return-object v0

    .line 60
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 61
    invoke-virtual {v3}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    invoke-static {v5}, Lcom/google/android/voicesearch/SoundManager;->access$100(Lcom/google/android/voicesearch/SoundManager;)F

    move-result v5

    iget-object v6, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    invoke-static {v6}, Lcom/google/android/voicesearch/SoundManager;->access$100(Lcom/google/android/voicesearch/SoundManager;)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 63
    :cond_1
    iget-object v4, p0, Lcom/google/android/voicesearch/SoundManager$1;->mTaskSounds:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v7

    .line 66
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/SoundManager$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/voicesearch/SoundManager$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager$1;->mTaskSounds:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/voicesearch/SoundManager;->access$200(Ljava/util/Map;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager$1;->this$0:Lcom/google/android/voicesearch/SoundManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/SoundManager$1;->mTaskSounds:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->access$302(Lcom/google/android/voicesearch/SoundManager;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_0
.end method
