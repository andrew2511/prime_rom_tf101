.class Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5$1;
.super Ljava/lang/Object;
.source "AWSSelectUploadAlbumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5$1;->this$1:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->access$0(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;)Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->finish()V

    .line 161
    return-void
.end method
