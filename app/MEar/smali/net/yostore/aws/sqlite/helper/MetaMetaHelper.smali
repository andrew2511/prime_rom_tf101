.class public Lnet/yostore/aws/sqlite/helper/MetaMetaHelper;
.super Ljava/lang/Object;
.source "MetaMetaHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "MetaMetaHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/MetaMetaHelper;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMetaMeta(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/MetaMeta;
    .locals 7
    .parameter "ctx"
    .parameter "userName"

    .prologue
    .line 12
    new-instance v0, Lnet/yostore/aws/sqlite/entity/MetaMeta;

    invoke-direct {v0}, Lnet/yostore/aws/sqlite/entity/MetaMeta;-><init>()V

    .line 13
    .local v0, ai:Lnet/yostore/aws/sqlite/entity/MetaMeta;
    iput-object p1, v0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->userName:Ljava/lang/String;

    .line 15
    new-instance v4, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;-><init>(Landroid/content/Context;)V

    .line 16
    .local v4, rta:Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;

    .line 17
    invoke-virtual {v4, p1}, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 18
    .local v1, cr:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 19
    const/4 v2, 0x1

    .line 20
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    .line 21
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->lastModified:J

    .line 24
    .end local v2           #i:I
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 25
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->close()V

    .line 26
    return-object v0
.end method

.method public static setMetaMeta(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/MetaMeta;)V
    .locals 2
    .parameter "ctx"
    .parameter "meta"

    .prologue
    .line 30
    new-instance v0, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;

    .line 32
    iget-object v1, p1, Lnet/yostore/aws/sqlite/entity/MetaMeta;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->update(Lnet/yostore/aws/sqlite/entity/MetaMeta;)I

    .line 36
    :goto_0
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->close()V

    .line 37
    return-void

    .line 35
    :cond_0
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/MetaMetaAdapter;->insert(Lnet/yostore/aws/sqlite/entity/MetaMeta;)J

    goto :goto_0
.end method
