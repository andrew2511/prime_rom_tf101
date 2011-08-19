.class Lcom/android/gallery3d/app/AlbumPage$2;
.super Landroid/content/BroadcastReceiver;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 265
    const-string v1, "image/*"

    invoke-static {p1, v1}, Lcom/android/gallery3d/util/Utils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 266
    .local v0, hasEditor:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$600(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->setHasPhotoEditor(Z)V

    .line 267
    return-void
.end method
