.class public Lnet/yostore/aws/sqlite/helper/UploadItemHelper;
.super Ljava/lang/Object;
.source "UploadItemHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "UploadItemHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/UploadItemHelper;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCanUpload(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 86
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, rta:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 88
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->getCanUpload()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 89
    .local v1, rtn:Z
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 90
    return v1
.end method

.method public static getUploadCaptureItem(Landroid/content/Context;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 9
    .parameter "ctx"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 103
    .local v5, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v4, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 104
    .local v4, rta:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 105
    invoke-virtual {v4, p1}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->popUploadCaptureItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 107
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_0
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 122
    return-object v5

    .line 108
    :cond_1
    const/4 v1, 0x0

    .line 109
    .local v1, i:I
    new-instance v3, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-direct {v3}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>()V

    .line 110
    .local v3, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 111
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->parent:Ljava/lang/String;

    .line 112
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    .line 113
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->type:I

    .line 114
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 116
    sget-object v6, Lnet/yostore/aws/sqlite/helper/UploadItemHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Capture-->"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getUploadCounts(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/UploadConfirm;
    .locals 6
    .parameter "ctx"

    .prologue
    .line 18
    new-instance v3, Lnet/yostore/aws/sqlite/entity/UploadConfirm;

    invoke-direct {v3}, Lnet/yostore/aws/sqlite/entity/UploadConfirm;-><init>()V

    .line 19
    .local v3, rtn:Lnet/yostore/aws/sqlite/entity/UploadConfirm;
    new-instance v2, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 20
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 21
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->getUploadCounts()Landroid/database/Cursor;

    move-result-object v1

    .line 22
    .local v1, cr:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 23
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 45
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_0
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 48
    return-object v3

    .line 24
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 25
    .local v4, ty:I
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 27
    .local v0, cnt:I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 29
    :pswitch_0
    invoke-virtual {v3, v0}, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->setUp_cam_cnt(I)V

    goto :goto_0

    .line 32
    :pswitch_1
    invoke-virtual {v3, v0}, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->setUp_aud_cnt(I)V

    goto :goto_0

    .line 35
    :pswitch_2
    invoke-virtual {v3, v0}, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->setUp_not_cnt(I)V

    goto :goto_0

    .line 38
    :pswitch_3
    invoke-virtual {v3, v0}, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->setUp_fil_cnt(I)V

    goto :goto_0

    .line 41
    :pswitch_4
    invoke-virtual {v3, v0}, Lnet/yostore/aws/sqlite/entity/UploadConfirm;->setUp_vdo_cnt(I)V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getUploadFileItem(Landroid/content/Context;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 9
    .parameter "ctx"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 127
    .local v5, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v4, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 128
    .local v4, rta:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 129
    invoke-virtual {v4, p1}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->popUploadFileItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 130
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 131
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 143
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_0
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 146
    return-object v5

    .line 132
    :cond_1
    const/4 v1, 0x0

    .line 133
    .local v1, i:I
    new-instance v3, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-direct {v3}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>()V

    .line 134
    .local v3, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 135
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->parent:Ljava/lang/String;

    .line 136
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    .line 137
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->type:I

    .line 138
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 140
    sget-object v6, Lnet/yostore/aws/sqlite/helper/UploadItemHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "File-->"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getUploadFileItemMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .parameter "ctx"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v5, rtn:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v4, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 152
    .local v4, rta:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 153
    invoke-virtual {v4, p1}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->popUploadFileItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 155
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 166
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_0
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 169
    return-object v5

    .line 156
    :cond_1
    const/4 v1, 0x0

    .line 157
    .local v1, i:I
    new-instance v3, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-direct {v3}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>()V

    .line 158
    .local v3, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 159
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->parent:Ljava/lang/String;

    .line 160
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    .line 161
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->type:I

    .line 162
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 164
    iget-object v6, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getUploadItemCount(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 71
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, rta:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 73
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->getUploadTotalCnt(Z)I

    move-result v1

    .line 74
    .local v1, rtn:I
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 75
    return v1
.end method

.method public static getUploadItemSize(Landroid/content/Context;)J
    .locals 3
    .parameter "ctx"

    .prologue
    .line 78
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, rta:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 80
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->getUploadTotalSize()J

    move-result-wide v1

    .line 81
    .local v1, rtn:J
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 82
    return-wide v1
.end method

.method public static insertUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V
    .locals 7
    .parameter "ctx"
    .parameter "ui"

    .prologue
    .line 53
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 55
    iget-object v1, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->parent:Ljava/lang/String;

    iget-object v2, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    iget v3, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->type:I

    iget-wide v4, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    iget v6, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    invoke-virtual/range {v0 .. v6}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->insertUploadItem(Ljava/lang/String;Ljava/lang/String;IJI)J

    .line 56
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 57
    return-void
.end method

.method public static isUploadItemExist(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)Z
    .locals 4
    .parameter "ctx"
    .parameter "ui"

    .prologue
    .line 94
    new-instance v1, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, rta:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 96
    iget-object v2, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->parent:Ljava/lang/String;

    iget-object v3, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->getSingleUploadItemCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, i:I
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 98
    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removeUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V
    .locals 4
    .parameter "ctx"
    .parameter "ui"

    .prologue
    .line 60
    sget-object v1, Lnet/yostore/aws/sqlite/helper/UploadItemHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeUploadItem\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 63
    iget v1, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->type:I

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->parent:Ljava/lang/String;

    iget-object v2, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->removeAnUploadItemFolderWithChildren(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    :goto_0
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 68
    return-void

    .line 66
    :cond_0
    iget-object v1, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->parent:Ljava/lang/String;

    iget-object v2, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->name:Ljava/lang/String;

    iget v3, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->type:I

    invoke-virtual {v0, v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->removeAnSingleUploadItem(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method
