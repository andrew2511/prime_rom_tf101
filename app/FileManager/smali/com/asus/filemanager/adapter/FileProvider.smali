.class public Lcom/asus/filemanager/adapter/FileProvider;
.super Ljava/lang/Object;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager/adapter/FileProvider$1;,
        Lcom/asus/filemanager/adapter/FileProvider$ProviderMsgLoop;,
        Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;
    }
.end annotation


# static fields
.field private static ALL_projection:[Ljava/lang/String;

.field private static LOG_PROVIDER:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mCr:Landroid/content/ContentResolver;

.field private static mProviderThread:Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;

.field private static mUri:Landroid/net/Uri;

.field private static tree_projection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    const-string v0, "[FileProvider]"

    sput-object v0, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_display_name"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "parent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/filemanager/adapter/FileProvider;->ALL_projection:[Ljava/lang/String;

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "parent"

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/filemanager/adapter/FileProvider;->tree_projection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method public static AddFile(Ljava/io/File;)V
    .locals 3
    .parameter "f"

    .prologue
    const/4 v2, 0x0

    .line 65
    if-nez p0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->mProviderThread:Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, p0}, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->SendMsg(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static AddFile(Ljava/io/File;Z)V
    .locals 6
    .parameter "f"
    .parameter "subTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    sget-object v3, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddFolder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaScanner;->isPathInScanDirectories(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-static {p0}, Lcom/asus/filemanager/adapter/FileProvider;->AddFolder(Ljava/io/File;)Z

    .line 75
    :cond_0
    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 78
    .local v0, fa:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_2

    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 79
    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/asus/filemanager/adapter/FileProvider;->AddFile(Ljava/io/File;Z)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0           #fa:[Ljava/io/File;
    .end local v1           #i:I
    :cond_1
    sget-object v3, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 87
    .local v2, u:Landroid/net/Uri;
    sget-object v3, Lcom/asus/filemanager/adapter/FileProvider;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    .end local v2           #u:Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private static AddFolder(Ljava/io/File;)Z
    .locals 4
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 145
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, path:Ljava/lang/String;
    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "format"

    const/16 v3, 0x3001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v2, "title"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "parent"

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/asus/filemanager/adapter/FileProvider;->GetFileID(Ljava/io/File;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    sget-object v2, Lcom/asus/filemanager/adapter/FileProvider;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/asus/filemanager/adapter/FileProvider;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 151
    const/4 v2, 0x1

    return v2
.end method

.method public static DeleteFile(Ljava/io/File;)Z
    .locals 2
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 59
    if-nez p0, :cond_0

    move v0, v1

    .line 61
    :goto_0
    return v0

    .line 60
    :cond_0
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->mProviderThread:Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;

    invoke-virtual {v0, v1, v1, v1, p0}, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->SendMsg(IIILjava/lang/Object;)V

    .line 61
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static DeleteFileID(IZ)Z
    .locals 10
    .parameter "id"
    .parameter "subTree"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 124
    if-eqz p1, :cond_2

    .line 126
    const/4 v6, 0x0

    .line 127
    .local v6, c:Landroid/database/Cursor;
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/asus/filemanager/adapter/FileProvider;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/asus/filemanager/adapter/FileProvider;->tree_projection:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 128
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0, v8}, Lcom/asus/filemanager/adapter/FileProvider;->DeleteFileID(IZ)Z

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/asus/filemanager/adapter/FileProvider;->mUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 136
    .local v7, r:I
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteFileID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", r = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-ne v7, v8, :cond_3

    move v0, v8

    .line 140
    :goto_0
    return v0

    :cond_3
    move v0, v9

    goto :goto_0
.end method

.method private static GetFileID(Ljava/io/File;)I
    .locals 15
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    .local v9, r:I
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, pathindb:Ljava/lang/String;
    const-string v3, "_data=?"

    .line 103
    .local v3, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 104
    .local v6, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 105
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/asus/filemanager/adapter/FileProvider;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/asus/filemanager/adapter/FileProvider;->ALL_projection:[Ljava/lang/String;

    new-array v4, v11, [Ljava/lang/String;

    aput-object v8, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 107
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, p:Ljava/lang/String;
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PATH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v7, :cond_3

    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TITLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    const-string v1, "====================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 116
    .end local v7           #p:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_1
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetFileID r = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v9

    .line 107
    :cond_2
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .restart local v7       #p:Ljava/lang/String;
    :cond_3
    move-object v2, v7

    .line 109
    goto/16 :goto_1

    .line 110
    :cond_4
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 111
    :cond_5
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 112
    :cond_6
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 2
    .parameter "ct"

    .prologue
    .line 51
    sput-object p0, Lcom/asus/filemanager/adapter/FileProvider;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/asus/filemanager/adapter/FileProvider;->mCr:Landroid/content/ContentResolver;

    .line 53
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/filemanager/adapter/FileProvider;->mUri:Landroid/net/Uri;

    .line 54
    new-instance v0, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;-><init>(Lcom/asus/filemanager/adapter/FileProvider$1;)V

    sput-object v0, Lcom/asus/filemanager/adapter/FileProvider;->mProviderThread:Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;

    .line 55
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->mProviderThread:Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;

    invoke-virtual {v0}, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->start()V

    .line 56
    return-void
.end method

.method public static Rename(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .parameter "oldf"
    .parameter "newf"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v2

    .line 95
    :goto_0
    return v0

    .line 93
    :cond_1
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->mProviderThread:Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v2, v1, v2, p0}, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->SendMsg(IIILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->mProviderThread:Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/asus/filemanager/adapter/FileProvider$ProviderThread;->SendMsg(IIILjava/lang/Object;)V

    move v0, v3

    .line 95
    goto :goto_0

    :cond_2
    move v1, v2

    .line 93
    goto :goto_1

    :cond_3
    move v1, v2

    .line 94
    goto :goto_2
.end method

.method static synthetic access$200(Ljava/io/File;)I
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0}, Lcom/asus/filemanager/adapter/FileProvider;->GetFileID(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/asus/filemanager/adapter/FileProvider;->LOG_PROVIDER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/asus/filemanager/adapter/FileProvider;->DeleteFileID(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/io/File;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/asus/filemanager/adapter/FileProvider;->AddFile(Ljava/io/File;Z)V

    return-void
.end method
