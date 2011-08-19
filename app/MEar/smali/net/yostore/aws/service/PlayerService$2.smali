.class Lnet/yostore/aws/service/PlayerService$2;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    iput-object p1, p0, Lnet/yostore/aws/service/PlayerService$2;->this$0:Lnet/yostore/aws/service/PlayerService;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 5
    .parameter "mp"
    .parameter "percent"

    .prologue
    const/16 v4, 0x8

    .line 174
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$2;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0, p2}, Lnet/yostore/aws/service/PlayerService;->access$29(Lnet/yostore/aws/service/PlayerService;I)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$2;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$30(Lnet/yostore/aws/service/PlayerService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    if-ne v4, p2, :cond_1

    :cond_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    .line 182
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$2;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/service/PlayerService;->access$31(Lnet/yostore/aws/service/PlayerService;J)V

    .line 183
    sput p2, Lcom/ecareme/mear/Mear;->bufferPercent:I

    .line 184
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$2;->this$0:Lnet/yostore/aws/service/PlayerService;

    const-string v1, "PlayStatus"

    invoke-static {v0, v1, v4}, Lnet/yostore/aws/service/PlayerService;->access$13(Lnet/yostore/aws/service/PlayerService;Ljava/lang/String;I)V

    .line 193
    :cond_2
    return-void
.end method
