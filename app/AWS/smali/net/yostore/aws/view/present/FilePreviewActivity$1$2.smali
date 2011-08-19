.class Lnet/yostore/aws/view/present/FilePreviewActivity$1$2;
.super Lnet/yostore/aws/ansytask/GetInternetTextTask;
.source "FilePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/FilePreviewActivity$1;->previewUrlFinish(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/present/FilePreviewActivity$1;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/FilePreviewActivity$1;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1$2;->this$1:Lnet/yostore/aws/view/present/FilePreviewActivity$1;

    .line 151
    invoke-direct {p0, p2, p3}, Lnet/yostore/aws/ansytask/GetInternetTextTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getTextFinish(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "sb"

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-super {p0, p1}, Lnet/yostore/aws/ansytask/GetInternetTextTask;->getTextFinish(Ljava/lang/StringBuilder;)V

    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1$2;->this$1:Lnet/yostore/aws/view/present/FilePreviewActivity$1;

    invoke-static {v0}, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->access$0(Lnet/yostore/aws/view/present/FilePreviewActivity$1;)Lnet/yostore/aws/view/present/FilePreviewActivity;

    move-result-object v0

    iget-object v0, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->txtPreview:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1$2;->this$1:Lnet/yostore/aws/view/present/FilePreviewActivity$1;

    invoke-static {v0}, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->access$0(Lnet/yostore/aws/view/present/FilePreviewActivity$1;)Lnet/yostore/aws/view/present/FilePreviewActivity;

    move-result-object v0

    iget-object v0, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->txtPreview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1$2;->this$1:Lnet/yostore/aws/view/present/FilePreviewActivity$1;

    invoke-static {v0}, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->access$0(Lnet/yostore/aws/view/present/FilePreviewActivity$1;)Lnet/yostore/aws/view/present/FilePreviewActivity;

    move-result-object v0

    iget-object v0, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->noPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onUpdateStatus(I)V
    .locals 2
    .parameter "values"

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1$2;->this$1:Lnet/yostore/aws/view/present/FilePreviewActivity$1;

    invoke-static {v0}, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->access$0(Lnet/yostore/aws/view/present/FilePreviewActivity$1;)Lnet/yostore/aws/view/present/FilePreviewActivity;

    move-result-object v0

    iget-object v0, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->loadingPreview:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$1$2;->this$1:Lnet/yostore/aws/view/present/FilePreviewActivity$1;

    invoke-static {v0}, Lnet/yostore/aws/view/present/FilePreviewActivity$1;->access$0(Lnet/yostore/aws/view/present/FilePreviewActivity$1;)Lnet/yostore/aws/view/present/FilePreviewActivity;

    move-result-object v0

    iget-object v0, v0, Lnet/yostore/aws/view/present/FilePreviewActivity;->loadingPreview:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
