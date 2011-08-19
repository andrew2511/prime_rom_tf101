.class Lnet/yostore/aws/service/PlayerService$4;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/service/PlayerService;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/PlayerService;


# direct methods
.method constructor <init>(Lnet/yostore/aws/service/PlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/service/PlayerService$4;->this$0:Lnet/yostore/aws/service/PlayerService;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mediaPlayer"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v4, 0x1

    .line 209
    if-eqz p1, :cond_3

    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    if-eq p2, v4, :cond_0

    if-ne p2, v4, :cond_3

    .line 210
    :cond_0
    const-string v1, "PlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onError--->   what:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    extra:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$4;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$4;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$4;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 217
    :cond_1
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$4;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    :try_start_1
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$4;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 224
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$4;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$7(Lnet/yostore/aws/service/PlayerService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    :cond_2
    :goto_1
    return v4

    .line 219
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 220
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PlayerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 227
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "PlayerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 229
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    .line 230
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$4;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-virtual {v1}, Lnet/yostore/aws/service/PlayerService;->mediaStop()V

    goto :goto_1
.end method
