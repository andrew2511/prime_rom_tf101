.class Lnet/yostore/aws/view/present/FilePreviewActivity$1;
.super Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;
.source "FilePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/FilePreviewActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/FilePreviewActivity;Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;-><init>(Lnet/yostore/aws/view/present/FilePreviewActivity;Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;)V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/present/FilePreviewActivity$1;)Lnet/yostore/aws/view/present/FilePreviewActivity;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    return-object v0
.end method


# virtual methods
.method protected onUpdateStatus(I)V
    .locals 2
    .parameter "values"

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->loadingPreview:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->loadingPreview:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected previewUrlFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "previewUrl"
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-super {p0, p1, p2}, Lnet/yostore/aws/view/present/FilePreviewActivity$previewProcessTask;->previewUrlFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "image/*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Lnet/yostore/aws/view/present/FilePreviewActivity$1$1;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->ctx:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lnet/yostore/aws/view/present/FilePreviewActivity$1$1;-><init>(Lnet/yostore/aws/view/present/FilePreviewActivity$1;Landroid/content/Context;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 147
    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/FilePreviewActivity$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string v0, "text/*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    new-instance v0, Lnet/yostore/aws/view/present/FilePreviewActivity$1$2;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->ctx:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lnet/yostore/aws/view/present/FilePreviewActivity$1$2;-><init>(Lnet/yostore/aws/view/present/FilePreviewActivity$1;Landroid/content/Context;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 177
    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/FilePreviewActivity$1$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 179
    :cond_2
    const-string v0, "audio/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    iput-object p1, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicUrl:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicPlayerIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    iget v1, v1, Lnet/yostore/aws/view/present/FilePreviewActivity;->playIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicPlayerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->noPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
