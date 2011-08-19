.class Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;
.super Ljava/lang/Object;
.source "GL2AlbumWallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->removeDialog(I)V

    .line 308
    return-void
.end method
