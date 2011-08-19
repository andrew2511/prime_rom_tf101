.class final Lcom/google/android/apps/uploader/clients/picasa/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/r;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/r;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/r;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->a(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/r;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-static {v2}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->b(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "account"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "auth_token"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/r;->a:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    const/16 v1, 0x63

    invoke-virtual {v0, v3, v1}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    return-void
.end method
