.class final Lcom/google/android/apps/uploader/clients/picasa/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/uploader/clients/picasa/p;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/i;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/uploader/a;)V
    .locals 2
    .parameter

    .prologue
    .line 163
    const-string v0, "MediaUploader"

    const-string v1, "Couldn\'t create album."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/i;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v0, v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/i;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v1, v1, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/i;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v0, v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/i;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v1, v1, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    .line 153
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got create album response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/i;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/clients/picasa/a;

    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;Lcom/google/android/apps/uploader/clients/picasa/a;)Lcom/google/android/apps/uploader/clients/picasa/a;

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/i;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v0, v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/i;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v1, v1, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/i;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v0, v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/i;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v1, v1, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
