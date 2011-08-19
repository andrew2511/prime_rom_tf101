.class Lnet/yostore/aws/handler/entity/AlbumInfoBean$1;
.super Ljava/lang/Thread;
.source "AlbumInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/handler/entity/AlbumInfoBean;->saveAlbumInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/handler/entity/AlbumInfoBean;


# direct methods
.method constructor <init>(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    .line 264
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 266
    new-instance v0, Lnet/yostore/aws/handler/PixWeDataHandler;

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    invoke-static {v1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->access$0(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 267
    .local v0, pdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    invoke-static {v1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->access$1(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 268
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    invoke-static {v1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->access$1(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    move-result-wide v1

    iget-object v3, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    invoke-static {v3}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->access$2(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getXml()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/yostore/aws/handler/PixWeDataHandler;->updateAlbumInfo(JLjava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    return-void
.end method
