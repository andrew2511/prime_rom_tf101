.class final Lcom/google/android/apps/uploader/clients/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/uploader/c;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/h;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/h;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 255
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 248
    const-string v0, "MediaUploader"

    const-string v1, "Failed to get authToken"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/h;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/h;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 251
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 237
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/h;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-static {v0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b(Lcom/google/android/apps/uploader/clients/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/h;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-static {v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->h(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/h;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b()V

    return-void
.end method
