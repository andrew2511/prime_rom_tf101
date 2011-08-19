.class Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$1;
.super Ljava/lang/Object;
.source "AWSSelectUploadAlbumActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "adapterView"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u9078\u64c7"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    const-string v1, "\u60a8\u6c92\u6709\u9078\u64c7\u4efb\u4f55\u9805\u76ee"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    return-void
.end method
