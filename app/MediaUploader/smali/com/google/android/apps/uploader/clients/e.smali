.class final Lcom/google/android/apps/uploader/clients/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/uploader/clients/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/e;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/e;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->c(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/e;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/e;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 186
    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/e;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    new-instance v3, Lcom/google/android/apps/uploader/clients/f;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/apps/uploader/clients/f;-><init>(Lcom/google/android/apps/uploader/clients/e;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method
