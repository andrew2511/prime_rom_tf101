.class public Lnet/yostore/aws/sqlite/helper/PlayListHelper;
.super Ljava/lang/Object;
.source "PlayListHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "PlayListHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delPlayLists(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/PlayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 146
    new-instance v2, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;-><init>(Landroid/content/Context;)V

    .line 147
    .local v2, pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->open()Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 150
    .local v0, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->close()V

    .line 157
    .end local v0           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    .end local v2           #pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    :cond_0
    return-void

    .line 151
    .restart local v0       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    .restart local v2       #pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/sqlite/entity/PlayList;

    .line 152
    .local v1, pl:Lnet/yostore/aws/sqlite/entity/PlayList;
    iget-object v3, v1, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->delete(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static getAllCompletePlayList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "username"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/PlayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    new-instance v5, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    invoke-direct {v5, p0}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;-><init>(Landroid/content/Context;)V

    .line 90
    .local v5, pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->open()Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    .line 91
    invoke-virtual {v5, p1}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->getAllCompletePlayList(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 93
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->close()V

    .line 106
    return-object v3

    .line 94
    :cond_1
    new-instance v4, Lnet/yostore/aws/sqlite/entity/PlayList;

    invoke-direct {v4}, Lnet/yostore/aws/sqlite/entity/PlayList;-><init>()V

    .line 95
    .local v4, pl:Lnet/yostore/aws/sqlite/entity/PlayList;
    const/4 v1, 0x0

    .line 96
    .local v1, i:I
    iput-object p1, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->username:Ljava/lang/String;

    .line 97
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    .line 98
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    .line 99
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->getStatus(I)Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    move-result-object v6

    iput-object v6, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 100
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    .line 101
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getAllPlayList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "username"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/PlayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    new-instance v5, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    invoke-direct {v5, p0}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;-><init>(Landroid/content/Context;)V

    .line 68
    .local v5, pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->open()Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    .line 69
    invoke-virtual {v5, p1}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->getAllPlayList(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 70
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 71
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 81
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_0
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->close()V

    .line 84
    return-object v3

    .line 72
    :cond_1
    new-instance v4, Lnet/yostore/aws/sqlite/entity/PlayList;

    invoke-direct {v4}, Lnet/yostore/aws/sqlite/entity/PlayList;-><init>()V

    .line 73
    .local v4, pl:Lnet/yostore/aws/sqlite/entity/PlayList;
    const/4 v1, 0x0

    .line 74
    .local v1, i:I
    iput-object p1, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->username:Ljava/lang/String;

    .line 75
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    .line 76
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    .line 77
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->getStatus(I)Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    move-result-object v6

    iput-object v6, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 78
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    .line 79
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getChangedPlayList(Landroid/content/Context;J)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "lastmodified"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/PlayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 177
    .local v5, pls:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    new-instance v4, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;-><init>(Landroid/content/Context;)V

    .line 178
    .local v4, pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->open()Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    .line 179
    invoke-virtual {v4, p1, p2}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->getNewPlayLists(J)Landroid/database/Cursor;

    move-result-object v0

    .line 180
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 181
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_0
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->close()V

    .line 194
    return-object v5

    .line 182
    :cond_1
    new-instance v3, Lnet/yostore/aws/sqlite/entity/PlayList;

    invoke-direct {v3}, Lnet/yostore/aws/sqlite/entity/PlayList;-><init>()V

    .line 183
    .local v3, pl:Lnet/yostore/aws/sqlite/entity/PlayList;
    const/4 v1, 0x0

    .line 184
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/PlayList;->username:Ljava/lang/String;

    .line 185
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    .line 186
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    .line 187
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->getStatus(I)Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 188
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    .line 189
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getPlayList(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/PlayList;
    .locals 7
    .parameter "ctx"
    .parameter "plistid"

    .prologue
    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, pl:Lnet/yostore/aws/sqlite/entity/PlayList;
    new-instance v4, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    .local v4, pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->open()Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    .line 48
    invoke-virtual {v4, p1}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->getOnePlayList(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 49
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    new-instance v3, Lnet/yostore/aws/sqlite/entity/PlayList;

    .end local v3           #pl:Lnet/yostore/aws/sqlite/entity/PlayList;
    invoke-direct {v3}, Lnet/yostore/aws/sqlite/entity/PlayList;-><init>()V

    .line 51
    .restart local v3       #pl:Lnet/yostore/aws/sqlite/entity/PlayList;
    const/4 v1, 0x0

    .line 52
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lnet/yostore/aws/sqlite/entity/PlayList;->username:Ljava/lang/String;

    .line 53
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    .line 54
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    .line 55
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->getStatus(I)Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    move-result-object v5

    iput-object v5, v3, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 56
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    .line 57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 59
    .end local v2           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_1
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->close()V

    .line 62
    return-object v3
.end method

.method public static insertAccInfo(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V
    .locals 4
    .parameter "ctx"
    .parameter "ai"

    .prologue
    .line 21
    sget-object v1, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertAccInfo\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AccInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 24
    iget-object v1, p1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    iget-object v2, p1, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    iget-object v3, p1, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->insertAccInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 25
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->close()V

    .line 26
    return-void
.end method

.method public static insertPlayLists(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/PlayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 129
    new-instance v2, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->open()Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    .local v0, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->close()V

    .line 140
    .end local v0           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    .end local v2           #pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    :cond_0
    return-void

    .line 134
    .restart local v0       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    .restart local v2       #pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/sqlite/entity/PlayList;

    .line 135
    .local v1, pl:Lnet/yostore/aws/sqlite/entity/PlayList;
    invoke-virtual {v2, v1}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->insert(Lnet/yostore/aws/sqlite/entity/PlayList;)J

    goto :goto_0
.end method

.method public static isExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "ctx"
    .parameter "plistid"

    .prologue
    .line 37
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, da:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    .line 39
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->getPlistCount(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 40
    .local v1, rtn:Z
    :goto_0
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->close()V

    .line 41
    return v1

    .line 39
    .end local v1           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public static updateLastMods(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/PlayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 163
    new-instance v2, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;-><init>(Landroid/content/Context;)V

    .line 164
    .local v2, pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->open()Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 167
    .local v0, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->close()V

    .line 174
    .end local v0           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    .end local v2           #pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    :cond_0
    return-void

    .line 168
    .restart local v0       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    .restart local v2       #pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/sqlite/entity/PlayList;

    .line 169
    .local v1, pl:Lnet/yostore/aws/sqlite/entity/PlayList;
    iget-object v3, v1, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    iget-wide v4, v1, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    invoke-virtual {v2, v3, v4, v5}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->updateLastMod(Ljava/lang/String;J)J

    goto :goto_0
.end method

.method public static updatePlayLists(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/PlayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 112
    new-instance v2, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;-><init>(Landroid/content/Context;)V

    .line 113
    .local v2, pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->open()Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    .local v0, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->close()V

    .line 123
    .end local v0           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    .end local v2           #pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    :cond_0
    return-void

    .line 117
    .restart local v0       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    .restart local v2       #pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/sqlite/entity/PlayList;

    .line 118
    .local v1, pl:Lnet/yostore/aws/sqlite/entity/PlayList;
    invoke-virtual {v2, v1}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->update(Lnet/yostore/aws/sqlite/entity/PlayList;)J

    goto :goto_0
.end method

.method public static updateStatus(Landroid/content/Context;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;)V
    .locals 4
    .parameter "ctx"
    .parameter "plistid"
    .parameter "status"

    .prologue
    .line 29
    sget-object v1, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateStatus\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, pla:Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->open()Lnet/yostore/aws/sqlite/helper/PlayListAdapter;

    .line 32
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->updateStatus(Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;)J

    .line 33
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->close()V

    .line 34
    return-void
.end method
