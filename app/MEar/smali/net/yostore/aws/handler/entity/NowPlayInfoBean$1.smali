.class Lnet/yostore/aws/handler/entity/NowPlayInfoBean$1;
.super Ljava/lang/Thread;
.source "NowPlayInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->saveNowPlayInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;


# direct methods
.method constructor <init>(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    .line 216
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 218
    new-instance v0, Lnet/yostore/aws/handler/MearDataHandler;

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-static {v1}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->access$0(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/MearDataHandler;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 219
    .local v0, mdh:Lnet/yostore/aws/handler/MearDataHandler;
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-static {v1}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->access$1(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;)J

    move-result-wide v1

    sget-wide v3, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 220
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->access$2(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;Z)V

    .line 224
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-static {v1}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->access$3(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/MearDataHandler;->updateNowPlayInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-static {v1}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->access$3(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/MearDataHandler;->updateNowPlayInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    :cond_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->access$2(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;Z)V

    goto :goto_0
.end method
