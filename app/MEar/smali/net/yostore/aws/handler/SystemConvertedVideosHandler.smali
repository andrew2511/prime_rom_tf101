.class public Lnet/yostore/aws/handler/SystemConvertedVideosHandler;
.super Ljava/lang/Object;
.source "SystemConvertedVideosHandler.java"


# static fields
.field public static final CONVERT_ERR_ERROR:Ljava/lang/String; = "error.video.nrr"

.field public static final CONVERT_JOB_ERROR:Ljava/lang/String; = "error.job.err"

.field public static final CONVERT_JOB_OK:Ljava/lang/String; = "error.job.ok"

.field public static final CONVERT_NOT_READY:Ljava/lang/String; = "error.video.notready"

.field private static final CONVERT_VIDEO_JOB:Ljava/lang/String; = "ffmpegVideoConvert"

.field public static final CREATE_FILE_ERROR:Ljava/lang/String; = "error.webrelay.directupload"

.field public static final CREATE_FOLDER_ERROR:Ljava/lang/String; = "error.folder.create"

.field private static final EXT:Ljava/lang/String; = ".mp4"

.field public static final GENERAL_API_ERROR:Ljava/lang/String; = "error.api.general"

.field private static final SYSTEM_CONVERED_VIDEOS:Ljava/lang/String; = "SystemConveredVideos"

.field private static final SYSTEM_NOTFUND:Ljava/lang/String; = "system.notfund"

.field private static final TAG:Ljava/lang/String; = "SystemConvertedVideosHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static composeArgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const-string v0, " -s 480x320 -vcodec mpeg4 -acodec libfaac -ac 2 -ar 16000 -r 23.976 -vb 500000 -ab 64000 "

    return-object v0
.end method

.method private static composeJobMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uid"
    .parameter "sid"
    .parameter "did"
    .parameter "args"

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, "srcfileid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, "dstfileid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, "args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createSystemConveredVideos(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "apicfg"
    .parameter "pid"
    .parameter "fname"

    .prologue
    .line 174
    const/4 v3, 0x0

    .line 176
    .local v3, rtn:Ljava/lang/String;
    :try_start_0
    new-instance v0, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    const-string v4, ""

    invoke-direct {v0, p1, p2, v4}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v2, 0x0

    .line 178
    .local v2, response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v0, p0}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v2

    .end local v2           #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v2, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 179
    .restart local v2       #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 180
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 181
    const-string v4, "SystemConvertedVideosHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FolderCreate "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Got ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v2           #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :goto_0
    return-object v3

    .line 184
    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v2       #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :cond_0
    const-string v4, "SystemConvertedVideosHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FolderCreate Exception status:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v2           #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 187
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SystemConvertedVideosHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FolderCreate folder Exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static delete3gpFile(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)V
    .locals 4
    .parameter "apicfg"
    .parameter "vid"

    .prologue
    .line 109
    new-instance v1, Lnet/yostore/aws/api/helper/FileRemoveHelper;

    invoke-direct {v1, p1}, Lnet/yostore/aws/api/helper/FileRemoveHelper;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, helper:Lnet/yostore/aws/api/helper/FileRemoveHelper;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/FileRemoveHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    const-string v2, "SystemConvertedVideosHandler"

    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method private static propfindConvered3gp(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/api/entity/FindPropfindResponse;
    .locals 6
    .parameter "apicfg"
    .parameter "pfid"
    .parameter "display"

    .prologue
    .line 161
    new-instance v2, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    const-string v4, "system.file"

    invoke-direct {v2, p1, p2, v4}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v2, helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    const/4 v3, 0x0

    .line 164
    .local v3, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    invoke-virtual {v2, p0}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v3, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-object v3

    .line 165
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 166
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    const-string v4, "SystemConvertedVideosHandler"

    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method private static propfindSystemConveredVideos(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "apicfg"
    .parameter "pid"
    .parameter "fn"

    .prologue
    .line 193
    const/4 v4, 0x0

    .line 195
    .local v4, rtn:Ljava/lang/String;
    new-instance v2, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    const-string v5, "system.folder"

    invoke-direct {v2, p1, p2, v5}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v2, helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    const/4 v3, 0x0

    .line 198
    .local v3, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    invoke-virtual {v2, p0}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v3, v0

    .line 199
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v5

    if-nez v5, :cond_1

    .line 200
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "system.notfund"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    const/4 v4, 0x0

    .line 215
    :goto_0
    return-object v4

    .line 204
    :cond_0
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 208
    :cond_1
    const-string v4, "error.api.general"
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 211
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    const-string v5, "SystemConvertedVideosHandler"

    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public static smartGetSystemConvertedVideos(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "apicfg"
    .parameter "pid"
    .parameter "fid"
    .parameter "display"

    .prologue
    .line 41
    const/4 v3, 0x0

    .line 43
    .local v3, rtn:Ljava/lang/String;
    const-string v5, "SystemConveredVideos"

    invoke-static {p0, p1, v5}, Lnet/yostore/aws/handler/SystemConvertedVideosHandler;->propfindSystemConveredVideos(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v5, "SystemConvertedVideosHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "propfinded SystemConveredVideos-->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-nez v3, :cond_0

    .line 49
    const-string v5, "SystemConveredVideos"

    invoke-static {p0, p1, v5}, Lnet/yostore/aws/handler/SystemConvertedVideosHandler;->createSystemConveredVideos(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string v5, "SystemConvertedVideosHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "create SystemConveredVideos-->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-nez v3, :cond_0

    .line 52
    const-string v3, "error.folder.create"

    .line 56
    :cond_0
    const-string v5, "error."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lnet/yostore/aws/handler/SystemConvertedVideosHandler;->propfindConvered3gp(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-result-object v1

    .line 58
    .local v1, res:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v5

    if-nez v5, :cond_8

    .line 59
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "system.notfund"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".err"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lnet/yostore/aws/handler/SystemConvertedVideosHandler;->propfindConvered3gp(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v5

    if-nez v5, :cond_3

    .line 63
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "system.notfund"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 64
    const-string v3, "error.video.nrr"

    .line 71
    :cond_1
    :goto_0
    const-string v5, "error."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lnet/yostore/aws/handler/SystemConvertedVideosHandler;->upload3gpFile(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, vid:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 74
    const-string v3, "error.webrelay.directupload"

    .line 105
    .end local v1           #res:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    .end local v4           #vid:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v3

    .line 68
    .restart local v1       #res:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_3
    const-string v3, "error.api.general"

    goto :goto_0

    .line 77
    .restart local v4       #vid:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {}, Lnet/yostore/aws/handler/SystemConvertedVideosHandler;->composeArgs()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p2, v4, v6}, Lnet/yostore/aws/handler/SystemConvertedVideosHandler;->composeJobMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, message:Ljava/lang/String;
    new-instance v2, Lnet/yostore/aws/api/entity/SubmitJobResponse;

    invoke-direct {v2}, Lnet/yostore/aws/api/entity/SubmitJobResponse;-><init>()V

    .line 82
    .local v2, rr:Lnet/yostore/aws/api/entity/SubmitJobResponse;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lnet/yostore/aws/api/entity/SubmitJobResponse;->setStatus(I)V

    .line 84
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/SubmitJobResponse;->getStatus()I

    move-result v5

    if-nez v5, :cond_5

    .line 85
    const-string v3, "error.job.ok"

    goto :goto_1

    .line 88
    :cond_5
    const-string v3, "error.job.err"

    .line 89
    invoke-static {p0, v4}, Lnet/yostore/aws/handler/SystemConvertedVideosHandler;->delete3gpFile(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    .end local v0           #message:Ljava/lang/String;
    .end local v2           #rr:Lnet/yostore/aws/api/entity/SubmitJobResponse;
    .end local v4           #vid:Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getSize()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-lez v5, :cond_7

    .line 95
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 98
    :cond_7
    const-string v3, "error.video.notready"

    goto :goto_1

    .line 102
    :cond_8
    const-string v3, "error.api.general"

    goto :goto_1
.end method

.method private static submitjob(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/api/entity/SubmitJobResponse;
    .locals 6
    .parameter "apicfg"
    .parameter "queue"
    .parameter "message"

    .prologue
    .line 119
    new-instance v2, Lnet/yostore/aws/api/helper/SubmitJobHelper;

    invoke-direct {v2, p1, p2}, Lnet/yostore/aws/api/helper/SubmitJobHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v2, helper:Lnet/yostore/aws/api/helper/SubmitJobHelper;
    const/4 v3, 0x0

    .line 122
    .local v3, response:Lnet/yostore/aws/api/entity/SubmitJobResponse;
    :try_start_0
    invoke-virtual {v2, p0}, Lnet/yostore/aws/api/helper/SubmitJobHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/SubmitJobResponse;

    move-object v3, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v3

    .line 123
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 124
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    const-string v4, "SystemConvertedVideosHandler"

    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method private static upload3gpFile(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "apicfg"
    .parameter "pid"
    .parameter "fn"

    .prologue
    .line 131
    const/4 v4, 0x0

    .line 132
    .local v4, rtn:Ljava/lang/String;
    const/4 v6, 0x0

    new-array v0, v6, [B

    .line 134
    .local v0, data:[B
    new-instance v5, Lnet/yostore/aws/api/WebRelayAPI;

    iget-object v6, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    const-string v7, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v5, v6, v7}, Lnet/yostore/aws/api/WebRelayAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v5, wr:Lnet/yostore/aws/api/WebRelayAPI;
    :try_start_0
    new-instance v2, Lnet/yostore/aws/api/entity/DirectUploadRequest;

    invoke-direct {v2}, Lnet/yostore/aws/api/entity/DirectUploadRequest;-><init>()V

    .line 138
    .local v2, request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    invoke-virtual {v2, v0}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setData([B)V

    .line 139
    invoke-virtual {v2, p2}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setFileName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2, p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setParentid(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v5, v2, p0}, Lnet/yostore/aws/api/WebRelayAPI;->directDataUpload(Lnet/yostore/aws/api/entity/DirectUploadRequest;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-result-object v3

    .line 142
    .local v3, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_0

    .line 144
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v4

    .line 157
    .end local v2           #request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    .end local v3           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :goto_0
    return-object v4

    .line 147
    .restart local v2       #request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    .restart local v3       #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_0
    const-string v6, "SystemConvertedVideosHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "response Status="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v2           #request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    .end local v3           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 154
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SystemConvertedVideosHandler"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    .restart local v3       #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_1
    :try_start_1
    const-string v6, "SystemConvertedVideosHandler"

    const-string v7, "response==null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
