.class final Lcom/google/android/apps/uploader/clients/picasa/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/f;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/f;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    .line 82
    return-void
.end method
