.class Lnet/yostore/aws/service/PlayerService$3;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lnet/yostore/aws/service/PlayerService$3;->this$0:Lnet/yostore/aws/service/PlayerService;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 200
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$3;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$32(Lnet/yostore/aws/service/PlayerService;)V

    .line 201
    return-void
.end method
