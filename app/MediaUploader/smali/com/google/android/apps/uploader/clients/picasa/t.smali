.class final Lcom/google/android/apps/uploader/clients/picasa/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->d(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->e(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->d(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->e(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->c(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/t;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->f(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->b(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;Ljava/lang/String;)V

    .line 205
    :cond_1
    return-void
.end method
