.class Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$6;
.super Ljava/lang/Object;
.source "SelectUploadAlbumActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    check-cast p2, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;

    .end local p2
    invoke-static {v0, p2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$17(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;)V

    .line 294
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$6;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$17(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;)V

    .line 300
    return-void
.end method
