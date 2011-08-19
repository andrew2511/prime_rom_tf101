.class Lnet/yostore/aws/api/BaseApi$1;
.super Lorg/apache/commons/httpclient/methods/PostMethod;
.source "BaseApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/api/BaseApi;->directIsUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/api/BaseApi;


# direct methods
.method constructor <init>(Lnet/yostore/aws/api/BaseApi;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/api/BaseApi$1;->this$0:Lnet/yostore/aws/api/BaseApi;

    .line 277
    invoke-direct {p0, p2}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRequestCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const-string v0, "UTF-8"

    return-object v0
.end method
