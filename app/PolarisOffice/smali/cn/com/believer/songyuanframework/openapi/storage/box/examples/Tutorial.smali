.class public final Lcn/com/believer/songyuanframework/openapi/storage/box/examples/Tutorial;
.super Ljava/lang/Object;
.source "Tutorial.java"


# static fields
.field public static final API_KEY:Ljava/lang/String; = "<Your-API-Key"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .parameter "args"

    .prologue
    .line 57
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;

    invoke-direct {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;-><init>()V

    .line 61
    .local v7, iBoxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;
    :try_start_0
    const-string p0, "<Enter new user_email here>"

    .line 62
    .local p0, email:Ljava/lang/String;
    const-string v0, "<new user password>"

    .line 64
    .local v0, password:Ljava/lang/String;
    const-string v1, "<Your-API-Key"

    .line 63
    invoke-static {v1, p0, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createRegisterNewUserRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;

    move-result-object v1

    .line 65
    .local v1, registerNewUserRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;
    invoke-interface {v7, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->registerNewUser(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;

    .line 66
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local v1           #registerNewUserRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Your username is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #email:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your password is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #password:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    const-string p0, "<Your-API-Key"

    invoke-static {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetTicketRequest(Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;

    move-result-object p0

    .line 71
    .local p0, getTicketRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    invoke-interface {v7, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getTicket(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;

    move-result-object v0

    .line 75
    .local v0, getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p0           #getTicketRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your ticket is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getTicket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "press any key after you are authenticated from box.net page (www.box.net/api/1.0/auth/<ticket>)."

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    .local p0, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object p0

    .line 85
    .end local p0           #br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    const-string p0, "<Your-API-Key"

    .line 86
    invoke-interface {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getTicket()Ljava/lang/String;

    move-result-object v0

    .line 85
    .end local v0           #getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    invoke-static {p0, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetAuthTokenRequest(Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;

    move-result-object p0

    .line 87
    .local p0, getAuthTokenRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;
    invoke-interface {v7, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getAuthToken(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;

    move-result-object p0

    .line 89
    .local p0, getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    const-string v0, "not_logged_in"

    invoke-interface {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    .end local p0           #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    :goto_1
    return-void

    .line 81
    .restart local v0       #getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    .local p0, br:Ljava/io/BufferedReader;
    :catch_0
    move-exception p0

    .line 82
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 148
    .end local v0           #getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    .end local p0           #e:Ljava/io/IOException;
    :catch_1
    move-exception p0

    .line 149
    .restart local p0       #e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 92
    .local p0, getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    :cond_0
    :try_start_3
    invoke-interface {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, authToken:Ljava/lang/String;
    const-string p0, "<Your-API-Key"

    .line 96
    .end local p0           #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    const-string v0, "0"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "folderName"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 95
    invoke-static {p0, v1, v0, v2, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createCreateFolderRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;

    move-result-object p0

    .line 97
    .local p0, createFolderRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;
    invoke-interface {v7, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->createFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;

    move-result-object p0

    .line 98
    .local p0, createFolderResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    invoke-interface {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->getFolder()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    move-result-object p0

    .end local p0           #createFolderResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    invoke-interface {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->getFolderId()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, createdFolderId:Ljava/lang/String;
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "This-is-a-Temp-File"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".txt"

    invoke-static {p0, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 102
    .local v0, tmpFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 103
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 104
    .local p0, out:Ljava/io/BufferedWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this is a test file for upload"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V

    .line 108
    new-instance p0, Ljava/util/HashMap;

    .end local p0           #out:Ljava/io/BufferedWriter;
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local p0, fileMap:Ljava/util/Map;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v0, 0x1

    invoke-static {v1, v0, v4, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createUploadRequest(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;

    .end local v0           #tmpFile:Ljava/io/File;
    move-result-object p0

    .line 112
    .local p0, uploadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;
    invoke-interface {v7, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->upload(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;

    move-result-object p0

    .line 114
    .local p0, uploadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    invoke-interface {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;->getUploadResultList()Ljava/util/List;

    move-result-object p0

    .end local p0           #uploadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;

    .line 115
    .local p0, uploadResult:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;
    invoke-interface {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;->getFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    move-result-object p0

    .end local p0           #uploadResult:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;
    invoke-interface {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->getFileId()Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, uploadedFileId:Ljava/lang/String;
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local p0, nameBytesHashMap:Ljava/util/HashMap;
    const-string v0, "fileName.txt"

    const-string v2, "fileName.txt"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/4 v0, 0x0

    invoke-static {v1, v0, v4, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createUploadRequest(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;

    move-result-object p0

    .line 120
    .local p0, uploadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;
    invoke-interface {v7, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->upload(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;

    .line 123
    const-string v0, "<Your-API-Key"

    .line 124
    const-string v2, "folder"

    const-string v3, "888888"

    const-string v5, "this is my public folder !"

    const/4 v6, 0x0

    .line 123
    invoke-static/range {v0 .. v6}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createPublicShareRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;

    move-result-object p0

    .line 125
    .local p0, publicShareRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;
    invoke-interface {v7, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->publicShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;

    .line 128
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    .end local p0           #publicShareRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;
    const/4 v0, 0x0

    const-string v2, "nozip"

    aput-object v2, p0, v0

    .line 130
    .local p0, params:[Ljava/lang/String;
    const-string v0, "<Your-API-Key"

    const-string v2, "0"

    .line 129
    invoke-static {v0, v1, v2, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetAccountTreeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;

    move-result-object p0

    .line 131
    .local p0, getAccountTreeRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;
    invoke-interface {v7, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getAccountTree(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;

    .line 134
    new-instance p0, Ljava/io/File;

    .end local p0           #getAccountTreeRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "downloadedFileNo."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local p0, tmpFile2:Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 136
    const/4 v0, 0x1

    invoke-static {v1, v8, v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDownloadRequest(Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;

    move-result-object p0

    .line 138
    .local p0, downloadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
    invoke-interface {v7, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->download(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;

    .line 141
    const-string p0, "<Your-API-Key"

    .end local p0           #downloadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
    const-string v0, "file"

    invoke-static {p0, v1, v0, v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDeleteRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;

    move-result-object p0

    .line 143
    .local p0, deleteRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    invoke-interface {v7, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->delete(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;

    .line 146
    const-string p0, "<Your-API-Key"

    .end local p0           #deleteRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    invoke-static {p0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createLogoutRequest(Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;

    move-result-object p0

    .line 147
    .local p0, logoutRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;
    invoke-interface {v7, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->logout(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 150
    .end local v1           #authToken:Ljava/lang/String;
    .end local v4           #createdFolderId:Ljava/lang/String;
    .end local v8           #uploadedFileId:Ljava/lang/String;
    .end local p0           #logoutRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;
    :catch_2
    move-exception p0

    .line 151
    .local p0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-virtual {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->printStackTrace()V

    goto/16 :goto_1
.end method
