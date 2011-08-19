.class final Lcom/google/android/apps/uploader/clients/g;
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
    .line 199
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 233
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 226
    const-string v0, "MediaUploader"

    const-string v1, "Failed to get accounts"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 229
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 199
    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->f(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-static {v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/b;->a(Landroid/app/Activity;Lcom/google/android/apps/uploader/c;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "com.google.android.apps.uploader.extra.preferredAccount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_account"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move v2, v4

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-static {v1, p1, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a(Lcom/google/android/apps/uploader/clients/SettingsActivity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
