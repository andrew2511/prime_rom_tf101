.class Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$1;
.super Ljava/lang/Object;
.source "SelectUploadAlbumActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "adapterView"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$9(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$10(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;J)V

    .line 115
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$11(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$11(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    return-void

    .line 119
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
