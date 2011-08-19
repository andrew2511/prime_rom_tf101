.class public Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;
.super Ljava/lang/Object;
.source "FolderChgSeqHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "FolderChgSeqHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllFolderChgSeq(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "userName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, folderChgSeqList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;>;"
    new-instance v5, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    invoke-direct {v5, p0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;-><init>(Landroid/content/Context;)V

    .line 80
    .local v5, rta:Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->open()Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    .line 81
    invoke-virtual {v5, p1}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->getAllFolderChgSeq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 83
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 94
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_1
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->close()V

    .line 98
    return-object v2

    .line 85
    :cond_2
    new-instance v1, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;-><init>()V

    .line 86
    .local v1, fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    const/4 v3, 0x0

    .line 87
    .local v3, i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setFolderId(J)V

    .line 88
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setUserName(Ljava/lang/String;)V

    .line 89
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeq(J)V

    .line 90
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeqTime(J)V

    .line 91
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setLocalUpdateTime(J)V

    .line 92
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getChangedFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "userName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, folderChgSeqList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;>;"
    new-instance v5, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    invoke-direct {v5, p0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;-><init>(Landroid/content/Context;)V

    .line 104
    .local v5, rta:Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->open()Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    .line 105
    invoke-virtual {v5, p1}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->getChangedFolder(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 107
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_0
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->close()V

    .line 122
    return-object v2

    .line 109
    :cond_1
    new-instance v1, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;-><init>()V

    .line 110
    .local v1, fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    const/4 v3, 0x0

    .line 111
    .local v3, i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setFolderId(J)V

    .line 112
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setUserName(Ljava/lang/String;)V

    .line 113
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeq(J)V

    .line 114
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeqTime(J)V

    .line 115
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setLocalUpdateTime(J)V

    .line 116
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getFolderChgSeqByFolderId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    .locals 7
    .parameter "ctx"
    .parameter "folderId"

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    new-instance v4, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;-><init>(Landroid/content/Context;)V

    .line 150
    .local v4, rta:Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->open()Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    .line 151
    invoke-virtual {v4, p1, p2}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->getFolderChgSeqByFolderId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 153
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    new-instance v1, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    .end local v1           #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;-><init>()V

    .line 155
    .restart local v1       #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    const/4 v2, 0x0

    .line 156
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setFolderId(J)V

    .line 157
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setUserName(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeq(J)V

    .line 159
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeqTime(J)V

    .line 160
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setLocalUpdateTime(J)V

    .line 162
    .end local v3           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_1
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->close()V

    .line 166
    return-object v1
.end method

.method public static getFolderOrderByChgTimeAsc(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    .locals 7
    .parameter "ctx"
    .parameter "userName"

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    new-instance v4, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;-><init>(Landroid/content/Context;)V

    .line 172
    .local v4, rta:Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->open()Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    .line 173
    invoke-virtual {v4, p1}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->getFolderOrderByChgTimeAsc(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    new-instance v1, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    .end local v1           #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;-><init>()V

    .line 176
    .restart local v1       #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    const/4 v2, 0x0

    .line 177
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setFolderId(J)V

    .line 178
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setUserName(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeq(J)V

    .line 180
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeqTime(J)V

    .line 181
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setLocalUpdateTime(J)V

    .line 183
    .end local v3           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 184
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_1
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->close()V

    .line 187
    return-object v1
.end method

.method public static insertFolderChgSeq(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;)V
    .locals 14
    .parameter "ctx"
    .parameter "folderChgSeq"

    .prologue
    .line 24
    if-eqz p1, :cond_2

    .line 25
    sget-object v1, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertFolderChgSeq\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getFolderId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->open()Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    .line 28
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getFolderId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->getFolderChgSeqByFolderId(J)Landroid/database/Cursor;

    move-result-object v10

    .line 29
    .local v10, cr:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30
    new-instance v11, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    invoke-direct {v11}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;-><init>()V

    .line 31
    .local v11, fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    const/4 v12, 0x0

    .line 32
    .local v12, i:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #i:I
    .local v13, i:I
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setFolderId(J)V

    .line 33
    add-int/lit8 v12, v13, 0x1

    .end local v13           #i:I
    .restart local v12       #i:I
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setUserName(Ljava/lang/String;)V

    .line 34
    add-int/lit8 v13, v12, 0x1

    .end local v12           #i:I
    .restart local v13       #i:I
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeq(J)V

    .line 35
    add-int/lit8 v12, v13, 0x1

    .end local v13           #i:I
    .restart local v12       #i:I
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeqTime(J)V

    .line 36
    add-int/lit8 v13, v12, 0x1

    .end local v12           #i:I
    .restart local v13       #i:I
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setLocalUpdateTime(J)V

    .line 37
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getChangeSeq()J

    move-result-wide v1

    invoke-virtual {v11}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getChangeSeq()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 38
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getFolderId()J

    move-result-wide v1

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getChangeSeq()J

    move-result-wide v3

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getChangeSeqTime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->updateChgSeqUpdate(JJJ)J

    .line 47
    .end local v11           #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    .end local v13           #i:I
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 48
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_1
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->close()V

    .line 51
    .end local v0           #wia:Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    .end local v10           #cr:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 39
    .restart local v0       #wia:Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    .restart local v10       #cr:Landroid/database/Cursor;
    .restart local v11       #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    .restart local v13       #i:I
    :cond_3
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getLocalUpdateTime()J

    move-result-wide v1

    invoke-virtual {v11}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getLocalUpdateTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 40
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getFolderId()J

    move-result-wide v1

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getLocalUpdateTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->updateLocalUpdateTime(JJ)J

    goto :goto_0

    .line 45
    .end local v11           #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    .end local v13           #i:I
    :cond_4
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getFolderId()J

    move-result-wide v1

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getChangeSeq()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getChangeSeqTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getLocalUpdateTime()J

    move-result-wide v8

    invoke-virtual/range {v0 .. v9}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->insertFolderChgSeq(JLjava/lang/String;JJJ)J

    goto :goto_0
.end method

.method public static popChangedFolder(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    .locals 7
    .parameter "ctx"
    .parameter "userName"

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    new-instance v4, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;-><init>(Landroid/content/Context;)V

    .line 128
    .local v4, rta:Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->open()Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    .line 129
    invoke-virtual {v4, p1}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->popChangedFolder(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 131
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    new-instance v1, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    .end local v1           #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;-><init>()V

    .line 133
    .restart local v1       #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    const/4 v2, 0x0

    .line 134
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setFolderId(J)V

    .line 135
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setUserName(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeq(J)V

    .line 137
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeqTime(J)V

    .line 138
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setLocalUpdateTime(J)V

    .line 140
    .end local v3           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_1
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->close()V

    .line 144
    return-object v1
.end method

.method public static removeFolderChgSeq(Landroid/content/Context;J)V
    .locals 3
    .parameter "ctx"
    .parameter "folderId"

    .prologue
    .line 54
    sget-object v1, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->TAG:Ljava/lang/String;

    const-string v2, "removeFolderChgSeq\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->open()Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    .line 57
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->deleteFolderChgSeq(J)Z

    .line 58
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->close()V

    .line 59
    return-void
.end method

.method public static updateChgSeqUpdate(Landroid/content/Context;JJJ)V
    .locals 7
    .parameter "ctx"
    .parameter "folder_id"
    .parameter "change_seq"
    .parameter "change_seq_time"

    .prologue
    .line 70
    sget-object v1, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->TAG:Ljava/lang/String;

    const-string v2, "updateChgSeq\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->open()Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 73
    invoke-virtual/range {v0 .. v6}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->updateChgSeqUpdate(JJJ)J

    .line 74
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->close()V

    .line 75
    return-void
.end method

.method public static updateLocalUpdateTime(Landroid/content/Context;JJ)V
    .locals 3
    .parameter "ctx"
    .parameter "folder_id"
    .parameter "local_update_time"

    .prologue
    .line 62
    sget-object v1, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->TAG:Ljava/lang/String;

    const-string v2, "updateChgSeq\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->open()Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;

    .line 65
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->updateLocalUpdateTime(JJ)J

    .line 66
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->close()V

    .line 67
    return-void
.end method
