.class final Lcom/google/android/apps/uploader/clients/picasa/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/k;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/k;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->finish()V

    .line 230
    return-void
.end method
