.class public Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;
.super Ljava/lang/Object;
.source "ResumableDownloadHelper.java"


# static fields
.field protected static final TOKEN_SETTING_PREFIX:Ljava/lang/String; = "token."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getToken(Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    if-nez p0, :cond_0

    move-object v0, v2

    .line 49
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 45
    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeAllPartialDownloadFiles(Lcom/amazon/system/io/IFileConnectionFactory;)I
    .locals 4
    .parameter "fileConnectionFactory"

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 103
    .local v1, deletedPartialBooks:I
    new-instance v3, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    invoke-direct {v3, p0}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;)V

    invoke-virtual {v3}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->listPartialEBooks()Ljava/util/Vector;

    move-result-object v2

    .line 106
    .local v2, partialBooks:Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 107
    .local v0, booksToDelete:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return v1
.end method

.method public static removeAllTokens(Lcom/amazon/system/io/IPersistentSettingsHelper;)I
    .locals 1
    .parameter "settings"

    .prologue
    .line 88
    const-string v0, "token."

    invoke-interface {p0, v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->removeSettingStartingWith(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static removeBookPartialFile(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/IPersistentSettingsHelper;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z
    .locals 8
    .parameter "fileFactory"
    .parameter "settings"
    .parameter "bookItem"

    .prologue
    .line 174
    invoke-interface {p0}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, bookRepository:[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 178
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getBookType()I

    move-result v6

    invoke-static {v6}, Lcom/amazon/kcp/library/models/BookType;->getCDEContentTypeFor(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, contentType:Ljava/lang/String;
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/system/io/internal/FileSystemHelper;->addTemporaryExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, fileNameAndPath:Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/amazon/system/io/internal/FileSystemHelper;->exists(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 187
    invoke-static {p0, v4}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    .line 190
    .local v0, bookDeletedStatus:Z
    if-eqz v0, :cond_0

    .line 192
    invoke-static {p0, p1, v4}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->removeToken(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;)V

    :cond_0
    move v6, v0

    .line 200
    .end local v0           #bookDeletedStatus:Z
    .end local v2           #contentType:Ljava/lang/String;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #fileNameAndPath:Ljava/lang/String;
    .end local v5           #i:I
    :goto_1
    return v6

    .line 181
    .restart local v2       #contentType:Ljava/lang/String;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v4       #fileNameAndPath:Ljava/lang/String;
    .restart local v5       #i:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    .end local v2           #contentType:Ljava/lang/String;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #fileNameAndPath:Ljava/lang/String;
    .end local v5           #i:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static removePartialFile(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 127
    if-nez p0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to delete file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with a null file connection factory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    if-nez p1, :cond_2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to delete file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with null settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 136
    goto :goto_0

    .line 139
    :cond_2
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to delete null or empty file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 142
    goto :goto_0

    .line 145
    :cond_3
    invoke-static {}, Lcom/amazon/system/io/internal/FileSystemHelper;->getTemporaryExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to delete a NON TEMPORARY file!: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 148
    goto :goto_0

    .line 152
    :cond_4
    invoke-static {p0, p2}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    .line 155
    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->removeToken(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static removeToken(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;)V
    .locals 3
    .parameter "fileFactory"
    .parameter "settings"
    .parameter "fileNameAndPath"

    .prologue
    .line 205
    invoke-static {p0, p2}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectFileNameWithExtension(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, fileNameNoPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->removeTemporaryExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->setToken(Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static setToken(Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 70
    :cond_0
    if-nez p2, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
