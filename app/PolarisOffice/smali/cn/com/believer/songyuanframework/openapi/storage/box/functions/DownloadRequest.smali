.class public interface abstract Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/BoxRequest;


# virtual methods
.method public abstract getAuthToken()Ljava/lang/String;
.end method

.method public abstract getFileId()Ljava/lang/String;
.end method

.method public abstract getInFile()Ljava/io/File;
.end method

.method public abstract isAsFile()Z
.end method

.method public abstract setAsFile(Z)V
.end method

.method public abstract setAuthToken(Ljava/lang/String;)V
.end method

.method public abstract setFileId(Ljava/lang/String;)V
.end method

.method public abstract setInFile(Ljava/io/File;)V
.end method
