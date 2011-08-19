.class final Lcom/google/android/apps/uploader/clients/picasa/g;
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
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/g;->a:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->b(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    .line 88
    return-void
.end method
