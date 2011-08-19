.class public final Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;
.super Ljava/lang/Object;
.source "ConverterUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static toBox(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/Box;
    .locals 5
    .parameter "boxElm"

    .prologue
    .line 251
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBox()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/Box;

    move-result-object v0

    .line 252
    .local v0, box:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/Box;
    const-string v4, "id"

    invoke-interface {p0, v4}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 253
    .local v1, idElm:Lorg/dom4j/Element;
    const-string v4, "url"

    invoke-interface {p0, v4}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 254
    .local v3, urlElm:Lorg/dom4j/Element;
    const-string v4, "status"

    invoke-interface {p0, v4}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 255
    .local v2, statusElm:Lorg/dom4j/Element;
    if-eqz v1, :cond_0

    .line 256
    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/Box;->setId(Ljava/lang/String;)V

    .line 258
    :cond_0
    if-eqz v3, :cond_1

    .line 259
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/Box;->setUrl(Ljava/lang/String;)V

    .line 261
    :cond_1
    if-eqz v2, :cond_2

    .line 262
    invoke-interface {v2}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/Box;->setStatus(Ljava/lang/String;)V

    .line 264
    :cond_2
    return-object v0
.end method

.method public static toBoxFile(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    .locals 11
    .parameter "infoElm"

    .prologue
    .line 112
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    move-result-object v0

    .line 114
    .local v0, boxFile:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    const-string v1, "file_id"

    invoke-interface {p0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 115
    .local v2, fileIdElm:Lorg/dom4j/Element;
    const-string v1, "file_name"

    invoke-interface {p0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 116
    .local v4, fileNameElm:Lorg/dom4j/Element;
    const-string v1, "folder_id"

    invoke-interface {p0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 117
    .local v5, folderIdElm:Lorg/dom4j/Element;
    const-string v1, "shared"

    invoke-interface {p0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 119
    .local v7, sharedElm:Lorg/dom4j/Element;
    const-string v1, "shared_name"

    invoke-interface {p0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v8

    .line 120
    .local v8, sharedNameElm:Lorg/dom4j/Element;
    const-string v1, "size"

    invoke-interface {p0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v9

    .line 122
    .local v9, sizeElm:Lorg/dom4j/Element;
    const-string v1, "description"

    invoke-interface {p0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 123
    .local v1, descriptionElm:Lorg/dom4j/Element;
    const-string v3, "sha1"

    invoke-interface {p0, v3}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 124
    .local v6, sha1Elm:Lorg/dom4j/Element;
    const-string v3, "created"

    invoke-interface {p0, v3}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 125
    .local v3, createdElm:Lorg/dom4j/Element;
    const-string v10, "updated"

    invoke-interface {p0, v10}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v10

    .line 126
    .local v10, updatedElm:Lorg/dom4j/Element;
    if-eqz v2, :cond_0

    .line 127
    invoke-interface {v2}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setFileId(Ljava/lang/String;)V

    .line 129
    :cond_0
    if-eqz v4, :cond_1

    .line 130
    invoke-interface {v4}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setFileName(Ljava/lang/String;)V

    .line 132
    :cond_1
    if-eqz v5, :cond_2

    .line 133
    invoke-interface {v5}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setFolderId(Ljava/lang/String;)V

    .line 135
    :cond_2
    if-eqz v7, :cond_3

    .line 136
    invoke-interface {v7}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object p0

    .line 137
    .local p0, sharedStr:Ljava/lang/String;
    const-string v2, "0"

    .end local v2           #fileIdElm:Lorg/dom4j/Element;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #sharedStr:Ljava/lang/String;
    if-eqz p0, :cond_a

    .line 138
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setShared(Z)V

    .line 143
    :cond_3
    :goto_0
    if-eqz v8, :cond_4

    .line 144
    invoke-interface {v8}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setSharedName(Ljava/lang/String;)V

    .line 146
    :cond_4
    if-eqz v9, :cond_5

    .line 147
    const-wide/16 v4, 0x0

    .line 148
    .end local v5           #folderIdElm:Lorg/dom4j/Element;
    .local v4, size:J
    invoke-interface {v9}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object p0

    .line 150
    .local p0, sizeStr:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 154
    .end local p0           #sizeStr:Ljava/lang/String;
    :goto_1
    invoke-interface {v0, v4, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setSize(J)V

    .line 156
    .end local v4           #size:J
    :cond_5
    if-eqz v1, :cond_6

    .line 157
    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setDescription(Ljava/lang/String;)V

    .line 159
    :cond_6
    if-eqz v6, :cond_7

    .line 160
    invoke-interface {v6}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setSha1(Ljava/lang/String;)V

    .line 162
    :cond_7
    if-eqz v3, :cond_8

    .line 163
    const-wide/16 v1, 0x0

    .line 164
    .local v1, created:J
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object p0

    .line 166
    .local p0, createdStr:Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    .line 170
    .end local p0           #createdStr:Ljava/lang/String;
    :goto_2
    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setCreated(J)V

    .line 172
    .end local v1           #created:J
    :cond_8
    if-eqz v10, :cond_9

    .line 173
    const-wide/16 v1, 0x0

    .line 174
    .local v1, updated:J
    invoke-interface {v10}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object p0

    .line 176
    .local p0, updatedStr:Ljava/lang/String;
    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v1

    .line 180
    .end local p0           #updatedStr:Ljava/lang/String;
    :goto_3
    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setUpdated(J)V

    .line 183
    .end local v1           #updated:J
    :cond_9
    return-object v0

    .line 140
    .local v1, descriptionElm:Lorg/dom4j/Element;
    .local v4, fileNameElm:Lorg/dom4j/Element;
    .restart local v5       #folderIdElm:Lorg/dom4j/Element;
    :cond_a
    const/4 p0, 0x1

    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->setShared(Z)V

    goto :goto_0

    .line 151
    .end local v5           #folderIdElm:Lorg/dom4j/Element;
    .local v4, size:J
    .local p0, sizeStr:Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 152
    .local p0, e:Ljava/lang/NumberFormatException;
    const-wide/high16 v4, -0x8000

    goto :goto_1

    .line 167
    .end local v4           #size:J
    .local v1, created:J
    .local p0, createdStr:Ljava/lang/String;
    :catch_1
    move-exception p0

    .line 168
    .local p0, e:Ljava/lang/NumberFormatException;
    const-wide/high16 v1, -0x8000

    goto :goto_2

    .line 177
    .local v1, updated:J
    .local p0, updatedStr:Ljava/lang/String;
    :catch_2
    move-exception p0

    .line 178
    .local p0, e:Ljava/lang/NumberFormatException;
    const-wide/high16 v1, -0x8000

    goto :goto_3
.end method

.method public static toBoxFolder(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    .locals 12
    .parameter "folderElm"

    .prologue
    .line 60
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxFolder()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    move-result-object v0

    .line 62
    .local v0, boxFolder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    const-string v11, "folder_id"

    invoke-interface {p0, v11}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 64
    .local v1, folderIdElm:Lorg/dom4j/Element;
    const-string v11, "folder_name"

    invoke-interface {p0, v11}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 66
    .local v2, folderNameElm:Lorg/dom4j/Element;
    const-string v11, "folder_type_id"

    invoke-interface {p0, v11}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 68
    .local v3, folderTypeIdElm:Lorg/dom4j/Element;
    const-string v11, "parent_folder_id"

    invoke-interface {p0, v11}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 69
    .local v4, parentFolderIdElm:Lorg/dom4j/Element;
    const-string v11, "user_id"

    invoke-interface {p0, v11}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v10

    .line 70
    .local v10, userIdElm:Lorg/dom4j/Element;
    const-string v11, "path"

    invoke-interface {p0, v11}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 71
    .local v6, pathElm:Lorg/dom4j/Element;
    const-string v11, "shared"

    invoke-interface {p0, v11}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v8

    .line 73
    .local v8, sharedElm:Lorg/dom4j/Element;
    const-string v11, "public_name"

    invoke-interface {p0, v11}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 75
    .local v7, publicNameElm:Lorg/dom4j/Element;
    const-string v11, "show_comments"

    invoke-interface {p0, v11}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v9

    .line 77
    .local v9, showCommentsElm:Lorg/dom4j/Element;
    const-string v11, "password"

    invoke-interface {p0, v11}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 79
    .local v5, passwordElm:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->setFolderId(Ljava/lang/String;)V

    .line 80
    invoke-interface {v2}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->setFolderName(Ljava/lang/String;)V

    .line 81
    if-eqz v3, :cond_0

    .line 82
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->setFolderTypeId(Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-interface {v4}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->setParentFolderId(Ljava/lang/String;)V

    .line 85
    if-eqz v5, :cond_1

    .line 86
    invoke-interface {v5}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->setPassword(Ljava/lang/String;)V

    .line 88
    :cond_1
    if-eqz v6, :cond_2

    .line 89
    invoke-interface {v6}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->setPath(Ljava/lang/String;)V

    .line 91
    :cond_2
    if-eqz v7, :cond_3

    .line 92
    invoke-interface {v7}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->setPublicName(Ljava/lang/String;)V

    .line 94
    :cond_3
    if-eqz v8, :cond_4

    .line 95
    invoke-interface {v8}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->setShared(Ljava/lang/String;)V

    .line 97
    :cond_4
    if-eqz v9, :cond_5

    .line 98
    invoke-interface {v9}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->setShowComments(Ljava/lang/String;)V

    .line 100
    :cond_5
    if-eqz v10, :cond_6

    .line 101
    invoke-interface {v10}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->setUserId(Ljava/lang/String;)V

    .line 103
    :cond_6
    return-object v0
.end method

.method public static toFriendsList(Lorg/dom4j/Element;)Ljava/util/List;
    .locals 10
    .parameter "friendsElm"

    .prologue
    .line 192
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v6, friendsList:Ljava/util/List;
    if-eqz p0, :cond_0

    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    move v7, v0

    .end local v0           #i:I
    .local v7, i:I
    :goto_0
    invoke-interface {p0}, Lorg/dom4j/Element;->nodeCount()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 241
    .end local v7           #i:I
    :cond_0
    return-object v6

    .line 195
    .restart local v7       #i:I
    :cond_1
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxFriend()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFriend;

    move-result-object v4

    .line 196
    .local v4, friend:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFriend;
    invoke-interface {p0, v7}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v5

    check-cast v5, Lorg/dom4j/Element;

    .line 198
    .local v5, friendElm:Lorg/dom4j/Element;
    const-string v0, "name"

    invoke-interface {v5, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v8

    .line 199
    .local v8, nameElm:Lorg/dom4j/Element;
    const-string v0, "email"

    invoke-interface {v5, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 200
    .local v3, emailElm:Lorg/dom4j/Element;
    const-string v0, "accepted"

    invoke-interface {v5, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 201
    .local v0, acceptedElm:Lorg/dom4j/Element;
    const-string v1, "avatar_url"

    invoke-interface {v5, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 202
    .local v1, avatarUrlElm:Lorg/dom4j/Element;
    const-string v2, "boxes"

    invoke-interface {v5, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 203
    .local v2, boxesElm:Lorg/dom4j/Element;
    const-string v9, "subscriptions"

    invoke-interface {v5, v9}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 205
    .local v5, subscriptionsElm:Lorg/dom4j/Element;
    if-eqz v8, :cond_2

    .line 206
    invoke-interface {v8}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v8

    .end local v8           #nameElm:Lorg/dom4j/Element;
    invoke-interface {v4, v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFriend;->setName(Ljava/lang/String;)V

    .line 208
    :cond_2
    if-eqz v3, :cond_3

    .line 209
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v3

    .end local v3           #emailElm:Lorg/dom4j/Element;
    invoke-interface {v4, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFriend;->setEmail(Ljava/lang/String;)V

    .line 211
    :cond_3
    if-eqz v0, :cond_4

    .line 212
    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .end local v0           #acceptedElm:Lorg/dom4j/Element;
    invoke-interface {v4, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFriend;->setAccepted(Ljava/lang/String;)V

    .line 214
    :cond_4
    if-eqz v1, :cond_5

    .line 215
    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFriend;->setAvatarUrl(Ljava/lang/String;)V

    .line 217
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #avatarUrlElm:Lorg/dom4j/Element;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, boxList:Ljava/util/List;
    if-eqz v2, :cond_6

    .line 219
    const/4 v0, 0x0

    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .local v3, j:I
    :goto_1
    invoke-interface {v2}, Lorg/dom4j/Element;->nodeCount()I

    move-result v0

    if-lt v3, v0, :cond_8

    .line 225
    .end local v3           #j:I
    :cond_6
    invoke-interface {v4, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFriend;->setBoxes(Ljava/util/List;)V

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #boxesElm:Lorg/dom4j/Element;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, subscriptionList:Ljava/util/List;
    if-eqz v5, :cond_7

    .line 229
    const/4 v0, 0x0

    .end local v1           #boxList:Ljava/util/List;
    .restart local v0       #j:I
    :goto_2
    invoke-interface {v5}, Lorg/dom4j/Element;->nodeCount()I

    move-result v1

    if-lt v0, v1, :cond_9

    .line 236
    .end local v0           #j:I
    :cond_7
    invoke-interface {v4, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFriend;->setSubscriptions(Ljava/util/List;)V

    .line 238
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v7, 0x1

    .end local v7           #i:I
    .local v0, i:I
    move v7, v0

    .end local v0           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0

    .line 220
    .restart local v1       #boxList:Ljava/util/List;
    .local v2, boxesElm:Lorg/dom4j/Element;
    .restart local v3       #j:I
    :cond_8
    invoke-interface {v2, v3}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 221
    .local v0, boxElm:Lorg/dom4j/Element;
    invoke-static {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toBox(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/Box;

    move-result-object v0

    .line 222
    .local v0, box:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/Box;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v3, 0x1

    .end local v3           #j:I
    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .restart local v3       #j:I
    goto :goto_1

    .line 231
    .end local v1           #boxList:Ljava/util/List;
    .end local v3           #j:I
    .restart local v0       #j:I
    .local v2, subscriptionList:Ljava/util/List;
    :cond_9
    invoke-interface {v5, v0}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    .line 230
    check-cast v1, Lorg/dom4j/Element;

    .line 232
    .local v1, subscriptionElm:Lorg/dom4j/Element;
    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toSubscription(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;

    move-result-object v1

    .line 233
    .local v1, subscription:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static toSubscription(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;
    .locals 6
    .parameter "subscriptionElm"

    .prologue
    .line 274
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxSubscription()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;

    move-result-object v2

    .line 275
    .local v2, subscription:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;
    const-string v5, "box_id"

    invoke-interface {p0, v5}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 276
    .local v0, boxIdElm:Lorg/dom4j/Element;
    const-string v5, "user_name"

    invoke-interface {p0, v5}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 277
    .local v4, userNameElm:Lorg/dom4j/Element;
    const-string v5, "url"

    invoke-interface {p0, v5}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 278
    .local v3, urlElm:Lorg/dom4j/Element;
    const-string v5, "status"

    invoke-interface {p0, v5}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 279
    .local v1, statusElm:Lorg/dom4j/Element;
    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;->setBoxId(Ljava/lang/String;)V

    .line 282
    :cond_0
    if-eqz v4, :cond_1

    .line 283
    invoke-interface {v4}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;->setUserName(Ljava/lang/String;)V

    .line 285
    :cond_1
    if-eqz v3, :cond_2

    .line 286
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;->setUrl(Ljava/lang/String;)V

    .line 288
    :cond_2
    if-eqz v1, :cond_3

    .line 289
    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;->setStatus(Ljava/lang/String;)V

    .line 291
    :cond_3
    return-object v2
.end method

.method public static transferTags2List(Lorg/dom4j/Element;)Ljava/util/List;
    .locals 7
    .parameter "tagsElm"

    .prologue
    .line 40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v5, tagsList:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Lorg/dom4j/Element;->nodeCount()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 50
    return-object v5

    .line 42
    :cond_0
    invoke-interface {p0, v0}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v4

    check-cast v4, Lorg/dom4j/Element;

    .line 43
    .local v4, tagElm:Lorg/dom4j/Element;
    const-string v6, "id"

    invoke-interface {v4, v6}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, id:Ljava/lang/String;
    invoke-interface {v4}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, name:Ljava/lang/String;
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxTag()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxTag;

    move-result-object v3

    .line 46
    .local v3, tag:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxTag;
    invoke-interface {v3, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxTag;->setId(Ljava/lang/String;)V

    .line 47
    invoke-interface {v3, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxTag;->setName(Ljava/lang/String;)V

    .line 48
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
