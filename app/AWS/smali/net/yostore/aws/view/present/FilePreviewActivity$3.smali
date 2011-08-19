.class Lnet/yostore/aws/view/present/FilePreviewActivity$3;
.super Ljava/lang/Object;
.source "FilePreviewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/FilePreviewActivity;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/FilePreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$3;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 235
    iget-object v1, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$3;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/FilePreviewActivity;->musicPlayerIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lnet/yostore/aws/view/present/FilePreviewActivity$3;->this$0:Lnet/yostore/aws/view/present/FilePreviewActivity;

    iget v2, v2, Lnet/yostore/aws/view/present/FilePreviewActivity;->stopIcon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FilePreviewActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 246
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FilePreviewActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
