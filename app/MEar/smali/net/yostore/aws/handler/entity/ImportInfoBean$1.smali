.class Lnet/yostore/aws/handler/entity/ImportInfoBean$1;
.super Ljava/lang/Thread;
.source "ImportInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/handler/entity/ImportInfoBean;->saveImportInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/handler/entity/ImportInfoBean;


# direct methods
.method constructor <init>(Lnet/yostore/aws/handler/entity/ImportInfoBean;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    .line 81
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lnet/yostore/aws/handler/MearDataHandler;

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-static {v1}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->access$0(Lnet/yostore/aws/handler/entity/ImportInfoBean;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/MearDataHandler;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 84
    .local v0, mdh:Lnet/yostore/aws/handler/MearDataHandler;
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-static {v1}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->access$1(Lnet/yostore/aws/handler/entity/ImportInfoBean;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/MearDataHandler;->updateImportInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/ImportInfoBean$1;->this$0:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-static {v1}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->access$1(Lnet/yostore/aws/handler/entity/ImportInfoBean;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/MearDataHandler;->updateImportInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    :cond_0
    return-void
.end method
