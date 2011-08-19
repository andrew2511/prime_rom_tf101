.class public Lnet/yostore/aws/handler/SharedHandler;
.super Ljava/lang/Object;
.source "SharedHandler.java"


# static fields
.field public static errMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, ""

    sput-object v0, Lnet/yostore/aws/handler/SharedHandler;->errMsg:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedFolderList(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;
    .locals 5
    .parameter "apicfg"

    .prologue
    .line 13
    new-instance v1, Lnet/yostore/aws/api/helper/GetSharedFolderListHelper;

    invoke-direct {v1}, Lnet/yostore/aws/api/helper/GetSharedFolderListHelper;-><init>()V

    .line 14
    .local v1, apihelper:Lnet/yostore/aws/api/helper/GetSharedFolderListHelper;
    const/4 v3, 0x0

    .line 16
    .local v3, response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/GetSharedFolderListHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    move-object v3, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-object v3

    .line 17
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 18
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v2}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method
