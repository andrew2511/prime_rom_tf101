.class Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;
.super Ljava/lang/Object;
.source "SelectUploadAlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-wide v0, v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->awsFolder:J

    const-wide/16 v2, -0x3e7

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$8(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-direct {v0, v1, v6}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;)V

    new-array v1, v5, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$UploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-wide v0, v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->awsFolder:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 215
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-direct {v0, v1, v6}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-wide v2, v2, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->awsFolder:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$3;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->finish()V

    goto :goto_0
.end method
