.class public Lcom/asus/dm/util/DMHandlerHelper;
.super Ljava/lang/Object;
.source "DMHandlerHelper.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final TAG:Ljava/lang/String; = "DMHandlerHelper"

.field private static final URI_BOOKMARK:Ljava/lang/String; = "./Settings/Book-Marks"

.field private static final URI_HOMEPAGE:Ljava/lang/String; = "./Settings/Home-Page"

.field static mAddHandlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/vdm/NodeAddHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static mBrwTreeNum:I

.field protected static mDMSInst:Landroid/content/Context;

.field static mDelHandlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/vdm/NodeDeleteHandler;",
            ">;"
        }
    .end annotation
.end field

.field static mIoHandlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/vdm/NodeIoHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static mMmsTreeNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 32
    sput v0, Lcom/asus/dm/util/DMHandlerHelper;->mMmsTreeNum:I

    .line 33
    sput v0, Lcom/asus/dm/util/DMHandlerHelper;->mBrwTreeNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDMHandlerHelper()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    .line 58
    sput-object v0, Lcom/asus/dm/util/DMHandlerHelper;->mAddHandlerList:Ljava/util/ArrayList;

    .line 59
    sput-object v0, Lcom/asus/dm/util/DMHandlerHelper;->mDelHandlerList:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method protected static initDMHandlerHelper(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 1
    .parameter "context"
    .parameter "pTree"

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/asus/dm/util/DMHandlerHelper;->mAddHandlerList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/asus/dm/util/DMHandlerHelper;->mDelHandlerList:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method protected static registerBookMarkIOHandler(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)V
    .locals 10
    .parameter "pTree"
    .parameter "pBookmark_Uri"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/asus/dm/util/DMUtils;->setCreateBootmarkInDb(Z)V

    .line 116
    invoke-static {p0, p1}, Lcom/asus/dm/util/DMUtils;->getAllChildURIs(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    .local v0, bookMarkLeafNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v8, secondWhere:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v0           #bookMarkLeafNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    .local v6, bookMarkLeafName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 124
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Lcom/asus/dm/handler/BookMarksIOHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    .end local v3           #where:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/asus/dm/handler/BookMarksIOHandler;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 127
    .local v1, ioTemp:Lcom/asus/dm/handler/BookMarksIOHandler;
    sget-object v2, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :try_start_0
    const-string v2, "DMHandlerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register IO node on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1           #ioTemp:Lcom/asus/dm/handler/BookMarksIOHandler;
    :goto_1
    new-instance v1, Lcom/asus/dm/handler/BookMarksDelHandler;

    sget-object v2, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    const-string v3, "url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/asus/dm/handler/BookMarksDelHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    .local v1, delTemp:Lcom/asus/dm/handler/BookMarksDelHandler;
    :try_start_1
    const-string v2, "DMHandlerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register Delete on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Lcom/asus/dmlib/vdm/VdmTree;->registerDelete(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeDeleteHandler;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :goto_2
    sget-object v2, Lcom/asus/dm/util/DMHandlerHelper;->mDelHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #delTemp:Lcom/asus/dm/handler/BookMarksDelHandler;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title != \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 131
    .local v1, ioTemp:Lcom/asus/dm/handler/BookMarksIOHandler;
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v2, "DMHandlerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error register IO on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 141
    .local v1, delTemp:Lcom/asus/dm/handler/BookMarksDelHandler;
    :catch_1
    move-exception v2

    .line 142
    .local v2, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v3, "DMHandlerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error register Delete on:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .end local v2           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 148
    .end local v1           #delTemp:Lcom/asus/dm/handler/BookMarksDelHandler;
    .restart local v3       #where:Ljava/lang/String;
    :cond_0
    const-string v1, "DMHandlerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete node: "

    .end local v3           #where:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    new-instance v1, Lcom/asus/dm/handler/BookMarksDelHandler;

    sget-object v2, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/asus/dm/handler/BookMarksDelHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    .restart local v1       #delTemp:Lcom/asus/dm/handler/BookMarksDelHandler;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Lcom/asus/dmlib/vdm/VdmTree;->registerDelete(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeDeleteHandler;)V
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    .end local v1           #delTemp:Lcom/asus/dm/handler/BookMarksDelHandler;
    :goto_4
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/asus/dm/util/DMUtils;->setCreateBootmarkInDb(Z)V

    .line 158
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/asus/dmlib/vdm/VdmTree;->deleteNode(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_3 .. :try_end_3} :catch_3

    .line 162
    :goto_5
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/asus/dm/util/DMUtils;->setCreateBootmarkInDb(Z)V

    goto/16 :goto_3

    .line 153
    .restart local v1       #delTemp:Lcom/asus/dm/handler/BookMarksDelHandler;
    :catch_2
    move-exception v1

    .line 154
    .local v1, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v2, "DMHandlerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error register Delete on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 159
    :catch_3
    move-exception v1

    .line 160
    .restart local v1       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v2, "DMHandlerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error delete on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 167
    .end local v0           #c:Landroid/database/Cursor;
    .end local v6           #bookMarkLeafName:Ljava/lang/String;
    :cond_1
    const-string v0, "bookmark = 1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v0, "DMHandlerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secondWhere: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    sget-object v0, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7           #i$:Ljava/util/Iterator;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8           #secondWhere:Ljava/lang/StringBuffer;
    move-result-object v0

    .line 174
    .restart local v0       #c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    :cond_2
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, leafName:Ljava/lang/String;
    const-string v1, "url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, leafData:Ljava/lang/String;
    :try_start_4
    const-string v3, "DMHandlerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add on  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .end local v1           #leafData:Ljava/lang/String;
    invoke-interface {p0, v3, v4, v5, v1}, Lcom/asus/dmlib/vdm/VdmTree;->addLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_4
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_4 .. :try_end_4} :catch_4

    .line 187
    .end local v2           #leafName:Ljava/lang/String;
    :goto_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/asus/dm/util/DMUtils;->setCreateBootmarkInDb(Z)V

    .line 193
    .end local p0
    return-void

    .line 182
    .restart local v2       #leafName:Ljava/lang/String;
    .restart local p0
    :catch_4
    move-exception v1

    .line 183
    .local v1, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v3, "DMHandlerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error register add on:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #leafName:Ljava/lang/String;
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected static registerBookmarkAddCallback(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)V
    .locals 5
    .parameter "pTree"
    .parameter "pUri"

    .prologue
    .line 103
    const-string v2, "./Settings/Book-Marks"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    new-instance v1, Lcom/asus/dm/handler/BookMarksAddHandler;

    sget-object v2, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/asus/dm/handler/BookMarksAddHandler;-><init>(Lcom/asus/dmlib/vdm/VdmTree;Landroid/content/Context;)V

    .line 105
    .local v1, temp:Lcom/asus/dm/handler/BookMarksAddHandler;
    sget-object v2, Lcom/asus/dm/util/DMHandlerHelper;->mAddHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :try_start_0
    invoke-interface {p0, p1, v1}, Lcom/asus/dmlib/vdm/VdmTree;->registerAdd(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeAddHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1           #temp:Lcom/asus/dm/handler/BookMarksAddHandler;
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local v1       #temp:Lcom/asus/dm/handler/BookMarksAddHandler;
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v2, "DMHandlerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error register add on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static registerBrowserCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/dm/settings/MobileConnectionList;)V
    .locals 18
    .parameter "pTree"
    .parameter "pMobileConList"

    .prologue
    .line 329
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Proxy"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "Port"

    aput-object v4, v6, v3

    const/4 v3, 0x2

    const-string v4, "Server"

    aput-object v4, v6, v3

    const/4 v3, 0x3

    const-string v4, "ToAPN"

    aput-object v4, v6, v3

    .line 331
    .local v6, brwLeafNameList:[Ljava/lang/String;
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 332
    .local v7, brwTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/dm/handler/APNHandler$HandleType;>;"
    const-string v3, "Proxy"

    sget-object v4, Lcom/asus/dm/handler/APNHandler$HandleType;->PROXY:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v3, "Port"

    sget-object v4, Lcom/asus/dm/handler/APNHandler$HandleType;->PORT:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v3, "Server"

    sget-object v4, Lcom/asus/dm/handler/APNHandler$HandleType;->SERVER:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v3, "ToAPN"

    sget-object v4, Lcom/asus/dm/handler/APNHandler$HandleType;->ToAPN:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "APN"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "Username"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "Password"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "APN-type"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "MCC"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "MNC"

    aput-object v5, v3, v4

    .line 340
    .local v3, apnLeafNameList:[Ljava/lang/String;
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 341
    .local v4, apnTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/dm/handler/APNHandler$HandleType;>;"
    const-string v5, "APN"

    sget-object v8, Lcom/asus/dm/handler/APNHandler$HandleType;->APN:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v5, "Name"

    sget-object v8, Lcom/asus/dm/handler/APNHandler$HandleType;->NAME:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v5, "Username"

    sget-object v8, Lcom/asus/dm/handler/APNHandler$HandleType;->USERNAME:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v5, "Password"

    sget-object v8, Lcom/asus/dm/handler/APNHandler$HandleType;->PASSWORD:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v5, "APN-type"

    sget-object v8, Lcom/asus/dm/handler/APNHandler$HandleType;->APN_TYPE:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v5, "MCC"

    sget-object v8, Lcom/asus/dm/handler/APNHandler$HandleType;->MCC:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v5, "MNC"

    sget-object v8, Lcom/asus/dm/handler/APNHandler$HandleType;->MNC:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dm/settings/MobileConnectionList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 351
    .local v13, mobileConIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/asus/dm/settings/MobileConnection;>;"
    const/16 p1, 0x1

    .local p1, count:I
    move/from16 v8, p1

    .end local p1           #count:I
    .local v8, count:I
    :goto_0
    sget p1, Lcom/asus/dm/util/DMHandlerHelper;->mBrwTreeNum:I

    move v0, v8

    move/from16 v1, p1

    if-gt v0, v1, :cond_6

    .line 352
    const/16 p1, 0x0

    .local p1, mobileCon:Lcom/asus/dm/settings/MobileConnection;
    move-object/from16 v12, p1

    .line 354
    .end local p1           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    .local v12, mobileCon:Lcom/asus/dm/settings/MobileConnection;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 355
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    check-cast v12, Lcom/asus/dm/settings/MobileConnection;

    .line 357
    .restart local v12       #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    invoke-virtual {v12}, Lcom/asus/dm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v5, "default"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    move-object/from16 p1, v6

    .local p1, arr$:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move v11, v0

    .local v11, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v10, v5

    .end local v5           #i$:I
    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_2

    aget-object v5, p1, v10

    .line 359
    .local v5, brwLeafName:Ljava/lang/String;
    const-string v9, "DMHandlerHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "register URI : ./Settings/BROWSER-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", instance"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v9, 0x0

    .line 363
    .local v9, temp:Lcom/asus/dm/handler/APNHandler;
    const-string v9, "ToAPN"

    .end local v9           #temp:Lcom/asus/dm/handler/APNHandler;
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 364
    new-instance v14, Lcom/asus/dm/handler/APNHandler;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-direct {v14, v9, v12}, Lcom/asus/dm/handler/APNHandler;-><init>(Lcom/asus/dm/handler/APNHandler$HandleType;Lcom/asus/dm/settings/MobileConnection;)V

    .line 367
    .local v14, temp:Lcom/asus/dm/handler/APNHandler;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/BROWSER-"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "/"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v14

    .line 384
    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    .local v5, temp:Lcom/asus/dm/handler/APNHandler;
    :goto_2
    sget-object v9, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v5, v10, 0x1

    .end local v10           #i$:I
    .local v5, i$:I
    move v10, v5

    .end local v5           #i$:I
    .restart local v10       #i$:I
    goto :goto_1

    .line 369
    .local v5, brwLeafName:Ljava/lang/String;
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :catch_0
    move-exception v9

    .line 370
    .local v9, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/BROWSER-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #brwLeafName:Ljava/lang/String;
    const-string v16, ": "

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .end local v9           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    .line 372
    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    .local v5, temp:Lcom/asus/dm/handler/APNHandler;
    goto :goto_2

    .line 374
    .local v5, brwLeafName:Ljava/lang/String;
    :cond_1
    new-instance v14, Lcom/asus/dm/handler/APNHandler;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/dm/handler/APNHandler$HandleType;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "./Settings/BROWSER-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v9, v15}, Lcom/asus/dm/handler/APNHandler;-><init>(Lcom/asus/dm/handler/APNHandler$HandleType;Ljava/lang/String;)V

    .line 377
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/BROWSER-"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "/"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v14

    .line 382
    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    .local v5, temp:Lcom/asus/dm/handler/APNHandler;
    goto/16 :goto_2

    .line 379
    .local v5, brwLeafName:Ljava/lang/String;
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :catch_1
    move-exception v9

    .line 380
    .restart local v9       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/BROWSER-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #brwLeafName:Ljava/lang/String;
    const-string v16, ": "

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .end local v9           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    .local v5, temp:Lcom/asus/dm/handler/APNHandler;
    goto/16 :goto_2

    .line 387
    .end local v5           #temp:Lcom/asus/dm/handler/APNHandler;
    :cond_2
    move-object v5, v3

    .end local p1           #arr$:[Ljava/lang/String;
    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    const/16 p1, 0x0

    .end local v10           #i$:I
    .local p1, i$:I
    move/from16 v10, p1

    .end local p1           #i$:I
    .restart local v10       #i$:I
    :goto_3
    if-ge v10, v11, :cond_3

    aget-object p1, v5, v10

    .line 388
    .local p1, apnLeafName:Ljava/lang/String;
    const-string v9, "DMHandlerHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "register URI : ./Settings/APN-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/asus/dm/util/DMHandlerHelper;->mMmsTreeNum:I

    add-int/2addr v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", instance"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v14, Lcom/asus/dm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-direct {v14, v9, v12}, Lcom/asus/dm/handler/APNHandler;-><init>(Lcom/asus/dm/handler/APNHandler$HandleType;Lcom/asus/dm/settings/MobileConnection;)V

    .line 395
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/APN-"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v15, Lcom/asus/dm/util/DMHandlerHelper;->mMmsTreeNum:I

    add-int/2addr v15, v8

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "/"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 402
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_4
    sget-object p1, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    add-int/lit8 p1, v10, 0x1

    .end local v10           #i$:I
    .local p1, i$:I
    move/from16 v10, p1

    .end local p1           #i$:I
    .restart local v10       #i$:I
    goto :goto_3

    .line 398
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 399
    .restart local v9       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/APN-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/asus/dm/util/DMHandlerHelper;->mMmsTreeNum:I

    add-int v17, v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #apnLeafName:Ljava/lang/String;
    const-string v16, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v9}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .end local v9           #e:Lcom/asus/dmlib/vdm/VdmException;
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    :cond_3
    move v9, v11

    .end local v11           #len$:I
    .local v9, len$:I
    move-object/from16 p1, v5

    .end local v5           #arr$:[Ljava/lang/String;
    .local p1, arr$:[Ljava/lang/String;
    move v5, v10

    .end local v10           #i$:I
    .local v5, i$:I
    move-object v10, v12

    .line 351
    .end local v12           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    .local v10, mobileCon:Lcom/asus/dm/settings/MobileConnection;
    :goto_5
    add-int/lit8 p1, v8, 0x1

    .end local v8           #count:I
    .local p1, count:I
    move/from16 v8, p1

    .end local p1           #count:I
    .restart local v8       #count:I
    goto/16 :goto_0

    .line 409
    .end local v5           #i$:I
    .end local v9           #len$:I
    .end local v10           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    .restart local v12       #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    :cond_4
    move-object/from16 p1, v6

    .local p1, arr$:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move v11, v0

    .restart local v11       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    move v10, v5

    .end local v5           #i$:I
    .local v10, i$:I
    :goto_6
    if-ge v10, v11, :cond_5

    aget-object v5, p1, v10

    .line 410
    .local v5, brwLeafName:Ljava/lang/String;
    const-string v9, "DMHandlerHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "register URI : ./Settings/BROWSER-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v14, Lcom/asus/dm/handler/APNHandler;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/dm/handler/APNHandler$HandleType;

    new-instance v15, Lcom/asus/dm/settings/MobileConnection;

    sget-object v16, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v15 .. v16}, Lcom/asus/dm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    invoke-direct {v14, v9, v15}, Lcom/asus/dm/handler/APNHandler;-><init>(Lcom/asus/dm/handler/APNHandler$HandleType;Lcom/asus/dm/settings/MobileConnection;)V

    .line 417
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/BROWSER-"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "/"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_3
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_3 .. :try_end_3} :catch_3

    .line 424
    .end local v5           #brwLeafName:Ljava/lang/String;
    :goto_7
    sget-object v5, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v5, v10, 0x1

    .end local v10           #i$:I
    .local v5, i$:I
    move v10, v5

    .end local v5           #i$:I
    .restart local v10       #i$:I
    goto :goto_6

    .line 419
    .local v5, brwLeafName:Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 420
    .local v9, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/BROWSER-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #brwLeafName:Ljava/lang/String;
    const-string v16, ": "

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .end local v9           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 427
    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    :cond_5
    move-object v5, v3

    .end local p1           #arr$:[Ljava/lang/String;
    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    const/16 p1, 0x0

    .end local v10           #i$:I
    .local p1, i$:I
    move/from16 v10, p1

    .end local p1           #i$:I
    .restart local v10       #i$:I
    :goto_8
    if-ge v10, v11, :cond_7

    aget-object p1, v5, v10

    .line 428
    .local p1, apnLeafName:Ljava/lang/String;
    const-string v9, "DMHandlerHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "register URI : ./Settings/APN-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/asus/dm/util/DMHandlerHelper;->mMmsTreeNum:I

    add-int/2addr v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    new-instance v14, Lcom/asus/dm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/dm/handler/APNHandler$HandleType;

    new-instance v15, Lcom/asus/dm/settings/MobileConnection;

    sget-object v16, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v15 .. v16}, Lcom/asus/dm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    invoke-direct {v14, v9, v15}, Lcom/asus/dm/handler/APNHandler;-><init>(Lcom/asus/dm/handler/APNHandler$HandleType;Lcom/asus/dm/settings/MobileConnection;)V

    .line 435
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/APN-"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v15, Lcom/asus/dm/util/DMHandlerHelper;->mMmsTreeNum:I

    add-int/2addr v15, v8

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "/"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_4
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_4 .. :try_end_4} :catch_4

    .line 442
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_9
    sget-object p1, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 p1, v10, 0x1

    .end local v10           #i$:I
    .local p1, i$:I
    move/from16 v10, p1

    .end local p1           #i$:I
    .restart local v10       #i$:I
    goto :goto_8

    .line 437
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 438
    .restart local v9       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/APN-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/asus/dm/util/DMHandlerHelper;->mMmsTreeNum:I

    add-int v17, v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #apnLeafName:Ljava/lang/String;
    const-string v16, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v9}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .end local v9           #e:Lcom/asus/dmlib/vdm/VdmException;
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 445
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    :cond_6
    return-void

    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    :cond_7
    move v9, v11

    .end local v11           #len$:I
    .local v9, len$:I
    move-object/from16 p1, v5

    .end local v5           #arr$:[Ljava/lang/String;
    .local p1, arr$:[Ljava/lang/String;
    move v5, v10

    .end local v10           #i$:I
    .local v5, i$:I
    move-object v10, v12

    .end local v12           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    .local v10, mobileCon:Lcom/asus/dm/settings/MobileConnection;
    goto/16 :goto_5
.end method

.method public static registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 3
    .parameter "DMService"
    .parameter "pTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dm/exception/DMInvalidException;
        }
    .end annotation

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    new-instance v1, Lcom/asus/dm/exception/DMInvalidException;

    const-string v2, "when call DMTmoTreeHandlerHelper.registerHandlers, agr DMService is null"

    invoke-direct {v1, v2}, Lcom/asus/dm/exception/DMInvalidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    if-nez p1, :cond_1

    .line 72
    new-instance v1, Lcom/asus/dm/exception/DMInvalidException;

    const-string v2, "when call DMTmoTreeHandlerHelper.registerHandlers, agr pTree is null"

    invoke-direct {v1, v2}, Lcom/asus/dm/exception/DMInvalidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1
    sput-object p0, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    .line 77
    sget-object v1, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/asus/dm/util/DMHandlerHelper;->initDMHandlerHelper(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 78
    new-instance v0, Lcom/asus/dm/settings/MobileConnectionList;

    sget-object v1, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/asus/dm/settings/MobileConnectionList;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, mcList:Lcom/asus/dm/settings/MobileConnectionList;
    invoke-static {p1, v0}, Lcom/asus/dm/util/DMHandlerHelper;->registerMMSCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/dm/settings/MobileConnectionList;)V

    .line 97
    invoke-static {p1}, Lcom/asus/dm/util/DMHandlerHelper;->registerVersionCallback(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 99
    return-void
.end method

.method protected static registerMMSCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/dm/settings/MobileConnectionList;)V
    .locals 18
    .parameter "pTree"
    .parameter "pMobileConList"

    .prologue
    .line 199
    const/4 v3, 0x4

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MMSC"

    aput-object v4, v10, v3

    const/4 v3, 0x1

    const-string v4, "MMS-Proxy"

    aput-object v4, v10, v3

    const/4 v3, 0x2

    const-string v4, "MMS-Port"

    aput-object v4, v10, v3

    const/4 v3, 0x3

    const-string v4, "ToAPN"

    aput-object v4, v10, v3

    .line 201
    .local v10, mmsLeafNameList:[Ljava/lang/String;
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    .line 202
    .local v11, mmsTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/dm/handler/APNHandler$HandleType;>;"
    const-string v3, "MMSC"

    sget-object v4, Lcom/asus/dm/handler/APNHandler$HandleType;->MMSC:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v11, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v3, "MMS-Proxy"

    sget-object v4, Lcom/asus/dm/handler/APNHandler$HandleType;->MMS_PROXY:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v11, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v3, "MMS-Port"

    sget-object v4, Lcom/asus/dm/handler/APNHandler$HandleType;->MMS_PORT:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v11, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v3, "ToAPN"

    sget-object v4, Lcom/asus/dm/handler/APNHandler$HandleType;->ToAPN:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v11, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "APN"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "Username"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "Password"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "APN-type"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "MCC"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "MNC"

    aput-object v5, v3, v4

    .line 210
    .local v3, apnLeafNameList:[Ljava/lang/String;
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 211
    .local v4, apnTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/dm/handler/APNHandler$HandleType;>;"
    const-string v5, "APN"

    sget-object v6, Lcom/asus/dm/handler/APNHandler$HandleType;->APN:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v5, "Name"

    sget-object v6, Lcom/asus/dm/handler/APNHandler$HandleType;->NAME:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v5, "Username"

    sget-object v6, Lcom/asus/dm/handler/APNHandler$HandleType;->USERNAME:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v5, "Password"

    sget-object v6, Lcom/asus/dm/handler/APNHandler$HandleType;->PASSWORD:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v5, "APN-type"

    sget-object v6, Lcom/asus/dm/handler/APNHandler$HandleType;->APN_TYPE:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v5, "MCC"

    sget-object v6, Lcom/asus/dm/handler/APNHandler$HandleType;->MCC:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v5, "MNC"

    sget-object v6, Lcom/asus/dm/handler/APNHandler$HandleType;->MNC:Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dm/settings/MobileConnectionList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 221
    .local v13, mobileConIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/asus/dm/settings/MobileConnection;>;"
    const/16 p1, 0x1

    .local p1, count:I
    move/from16 v6, p1

    .end local p1           #count:I
    .local v6, count:I
    :goto_0
    sget p1, Lcom/asus/dm/util/DMHandlerHelper;->mMmsTreeNum:I

    move v0, v6

    move/from16 v1, p1

    if-gt v0, v1, :cond_6

    .line 222
    const/16 p1, 0x0

    .local p1, mobileCon:Lcom/asus/dm/settings/MobileConnection;
    move-object/from16 v12, p1

    .line 224
    .end local p1           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    .local v12, mobileCon:Lcom/asus/dm/settings/MobileConnection;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 225
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    check-cast v12, Lcom/asus/dm/settings/MobileConnection;

    .line 227
    .restart local v12       #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    invoke-virtual {v12}, Lcom/asus/dm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v5, "mms"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    move-object/from16 p1, v10

    .local p1, arr$:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v7, v5

    .end local v5           #i$:I
    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v9, p1, v7

    .line 231
    .local v9, mmsLeafName:Ljava/lang/String;
    const-string v5, "DMHandlerHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "register URI : ./Settings/MMS-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", handleType : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", instance"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v5, v14, v15}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    const/4 v5, 0x0

    .line 237
    .local v5, temp:Lcom/asus/dm/handler/APNHandler;
    const-string v5, "ToAPN"

    .end local v5           #temp:Lcom/asus/dm/handler/APNHandler;
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 238
    new-instance v14, Lcom/asus/dm/handler/APNHandler;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-direct {v14, v5, v12}, Lcom/asus/dm/handler/APNHandler;-><init>(Lcom/asus/dm/handler/APNHandler$HandleType;Lcom/asus/dm/settings/MobileConnection;)V

    .line 241
    .local v14, temp:Lcom/asus/dm/handler/APNHandler;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/MMS-"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v14

    .line 259
    .end local v9           #mmsLeafName:Ljava/lang/String;
    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    .restart local v5       #temp:Lcom/asus/dm/handler/APNHandler;
    :goto_2
    sget-object v9, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v5, v7, 0x1

    .end local v7           #i$:I
    .local v5, i$:I
    move v7, v5

    .end local v5           #i$:I
    .restart local v7       #i$:I
    goto :goto_1

    .line 243
    .restart local v9       #mmsLeafName:Ljava/lang/String;
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :catch_0
    move-exception v5

    .line 244
    .local v5, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/MMS-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .end local v9           #mmsLeafName:Ljava/lang/String;
    const-string v16, ": "

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .end local v5           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    .line 246
    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    .local v5, temp:Lcom/asus/dm/handler/APNHandler;
    goto :goto_2

    .line 248
    .end local v5           #temp:Lcom/asus/dm/handler/APNHandler;
    .restart local v9       #mmsLeafName:Ljava/lang/String;
    :cond_1
    new-instance v14, Lcom/asus/dm/handler/APNHandler;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/dm/handler/APNHandler$HandleType;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "./Settings/APN-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v5, v15}, Lcom/asus/dm/handler/APNHandler;-><init>(Lcom/asus/dm/handler/APNHandler$HandleType;Ljava/lang/String;)V

    .line 251
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/MMS-"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v14

    .line 256
    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    .restart local v5       #temp:Lcom/asus/dm/handler/APNHandler;
    goto/16 :goto_2

    .line 253
    .end local v5           #temp:Lcom/asus/dm/handler/APNHandler;
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :catch_1
    move-exception v5

    .line 254
    .local v5, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/MMS-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .end local v9           #mmsLeafName:Ljava/lang/String;
    const-string v16, ": "

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .end local v5           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    .local v5, temp:Lcom/asus/dm/handler/APNHandler;
    goto/16 :goto_2

    .line 263
    .end local v5           #temp:Lcom/asus/dm/handler/APNHandler;
    :cond_2
    move-object v5, v3

    .end local p1           #arr$:[Ljava/lang/String;
    .local v5, arr$:[Ljava/lang/String;
    array-length v9, v5

    .end local v8           #len$:I
    .local v9, len$:I
    const/16 p1, 0x0

    .end local v7           #i$:I
    .local p1, i$:I
    move/from16 v8, p1

    .end local p1           #i$:I
    .local v8, i$:I
    :goto_3
    if-ge v8, v9, :cond_3

    aget-object p1, v5, v8

    .line 264
    .local p1, apnLeafName:Ljava/lang/String;
    const-string v7, "DMHandlerHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "register URI : ./Settings/APN-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", instance"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v7, v14, v15}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 267
    new-instance v14, Lcom/asus/dm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/asus/dm/handler/APNHandler$HandleType;

    invoke-direct {v14, v7, v12}, Lcom/asus/dm/handler/APNHandler;-><init>(Lcom/asus/dm/handler/APNHandler$HandleType;Lcom/asus/dm/settings/MobileConnection;)V

    .line 271
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/APN-"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "/"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 278
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_4
    sget-object p1, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 p1, v8, 0x1

    .end local v8           #i$:I
    .local p1, i$:I
    move/from16 v8, p1

    .end local p1           #i$:I
    .restart local v8       #i$:I
    goto :goto_3

    .line 273
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 274
    .local v7, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/APN-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #apnLeafName:Ljava/lang/String;
    const-string v16, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .end local v7           #e:Lcom/asus/dmlib/vdm/VdmException;
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    :cond_3
    move v7, v9

    .end local v9           #len$:I
    .local v7, len$:I
    move-object/from16 p1, v5

    .end local v5           #arr$:[Ljava/lang/String;
    .local p1, arr$:[Ljava/lang/String;
    move v5, v8

    .end local v8           #i$:I
    .local v5, i$:I
    move-object v8, v12

    .line 221
    .end local v12           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    .local v8, mobileCon:Lcom/asus/dm/settings/MobileConnection;
    :goto_5
    add-int/lit8 p1, v6, 0x1

    .end local v6           #count:I
    .local p1, count:I
    move/from16 v6, p1

    .end local p1           #count:I
    .restart local v6       #count:I
    goto/16 :goto_0

    .line 287
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    .restart local v12       #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    :cond_4
    move-object/from16 p1, v10

    .local p1, arr$:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    move v7, v5

    .end local v5           #i$:I
    .local v7, i$:I
    :goto_6
    if-ge v7, v8, :cond_5

    aget-object v9, p1, v7

    .line 288
    .local v9, mmsLeafName:Ljava/lang/String;
    const-string v5, "DMHandlerHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "register URI : ./Settings/MMS-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v5, v14, v15}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 291
    new-instance v14, Lcom/asus/dm/handler/APNHandler;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/dm/handler/APNHandler$HandleType;

    new-instance v15, Lcom/asus/dm/settings/MobileConnection;

    sget-object v16, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v15 .. v16}, Lcom/asus/dm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    invoke-direct {v14, v5, v15}, Lcom/asus/dm/handler/APNHandler;-><init>(Lcom/asus/dm/handler/APNHandler$HandleType;Lcom/asus/dm/settings/MobileConnection;)V

    .line 295
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/MMS-"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_3
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_3 .. :try_end_3} :catch_3

    .line 302
    .end local v9           #mmsLeafName:Ljava/lang/String;
    :goto_7
    sget-object v5, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v5, v7, 0x1

    .end local v7           #i$:I
    .restart local v5       #i$:I
    move v7, v5

    .end local v5           #i$:I
    .restart local v7       #i$:I
    goto :goto_6

    .line 297
    .restart local v9       #mmsLeafName:Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 298
    .local v5, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/MMS-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .end local v9           #mmsLeafName:Ljava/lang/String;
    const-string v16, ": "

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .end local v5           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 305
    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    :cond_5
    move-object v5, v3

    .end local p1           #arr$:[Ljava/lang/String;
    .local v5, arr$:[Ljava/lang/String;
    array-length v9, v5

    .end local v8           #len$:I
    .local v9, len$:I
    const/16 p1, 0x0

    .end local v7           #i$:I
    .local p1, i$:I
    move/from16 v8, p1

    .end local p1           #i$:I
    .local v8, i$:I
    :goto_8
    if-ge v8, v9, :cond_7

    aget-object p1, v5, v8

    .line 306
    .local p1, apnLeafName:Ljava/lang/String;
    const-string v7, "DMHandlerHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "register URI : ./Settings/APN-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v14, Lcom/asus/dm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/asus/dm/handler/APNHandler$HandleType;

    new-instance v15, Lcom/asus/dm/settings/MobileConnection;

    sget-object v16, Lcom/asus/dm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v15 .. v16}, Lcom/asus/dm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    invoke-direct {v14, v7, v15}, Lcom/asus/dm/handler/APNHandler;-><init>(Lcom/asus/dm/handler/APNHandler$HandleType;Lcom/asus/dm/settings/MobileConnection;)V

    .line 313
    .restart local v14       #temp:Lcom/asus/dm/handler/APNHandler;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/APN-"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "/"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_4
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_4 .. :try_end_4} :catch_4

    .line 320
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_9
    sget-object p1, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 p1, v8, 0x1

    .end local v8           #i$:I
    .local p1, i$:I
    move/from16 v8, p1

    .end local p1           #i$:I
    .restart local v8       #i$:I
    goto :goto_8

    .line 315
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 316
    .local v7, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/APN-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #apnLeafName:Ljava/lang/String;
    const-string v16, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v7}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .end local v7           #e:Lcom/asus/dmlib/vdm/VdmException;
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 323
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    .end local v14           #temp:Lcom/asus/dm/handler/APNHandler;
    :cond_6
    return-void

    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v12       #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    :cond_7
    move v7, v9

    .end local v9           #len$:I
    .local v7, len$:I
    move-object/from16 p1, v5

    .end local v5           #arr$:[Ljava/lang/String;
    .local p1, arr$:[Ljava/lang/String;
    move v5, v8

    .end local v8           #i$:I
    .local v5, i$:I
    move-object v8, v12

    .end local v12           #mobileCon:Lcom/asus/dm/settings/MobileConnection;
    .local v8, mobileCon:Lcom/asus/dm/settings/MobileConnection;
    goto/16 :goto_5
.end method

.method protected static registerVersionCallback(Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 11
    .parameter "pTree"

    .prologue
    .line 457
    if-nez p0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 460
    :cond_0
    new-instance v0, Lcom/asus/dm/handler/VersionHandler;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/asus/dm/handler/VersionHandler;-><init>(I)V

    .line 461
    .local v0, dmcv:Lcom/asus/dm/handler/VersionHandler;
    new-instance v2, Lcom/asus/dm/handler/VersionHandler;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Lcom/asus/dm/handler/VersionHandler;-><init>(I)V

    .line 462
    .local v2, fwv:Lcom/asus/dm/handler/VersionHandler;
    new-instance v7, Lcom/asus/dm/handler/VersionHandler;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/asus/dm/handler/VersionHandler;-><init>(I)V

    .line 463
    .local v7, swv:Lcom/asus/dm/handler/VersionHandler;
    new-instance v3, Lcom/asus/dm/handler/VersionHandler;

    const/4 v8, 0x3

    invoke-direct {v3, v8}, Lcom/asus/dm/handler/VersionHandler;-><init>(I)V

    .line 464
    .local v3, hwv:Lcom/asus/dm/handler/VersionHandler;
    new-instance v6, Lcom/asus/dm/handler/VersionHandler;

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Lcom/asus/dm/handler/VersionHandler;-><init>(I)V

    .line 465
    .local v6, mod:Lcom/asus/dm/handler/VersionHandler;
    new-instance v5, Lcom/asus/dm/handler/VersionHandler;

    const/4 v8, 0x5

    invoke-direct {v5, v8}, Lcom/asus/dm/handler/VersionHandler;-><init>(I)V

    .line 466
    .local v5, man:Lcom/asus/dm/handler/VersionHandler;
    new-instance v4, Lcom/asus/dm/handler/VersionHandler;

    const/4 v8, 0x6

    invoke-direct {v4, v8}, Lcom/asus/dm/handler/VersionHandler;-><init>(I)V

    .line 469
    .local v4, lang:Lcom/asus/dm/handler/VersionHandler;
    :try_start_0
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/DmV"

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v8, "./DevInfo/DmV"

    invoke-interface {p0, v8, v0}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 471
    sget-object v8, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 476
    :goto_1
    :try_start_1
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/FwV"

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v8, "./DevDetail/FwV"

    invoke-interface {p0, v8, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 478
    sget-object v8, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 483
    :goto_2
    :try_start_2
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/SwV"

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v8, "./DevDetail/SwV"

    invoke-interface {p0, v8, v7}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 485
    sget-object v8, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_3

    .line 490
    :goto_3
    :try_start_3
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/HwV"

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v8, "./DevDetail/HwV"

    invoke-interface {p0, v8, v3}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 492
    sget-object v8, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_3 .. :try_end_3} :catch_4

    .line 497
    :goto_4
    :try_start_4
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/Mod"

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v8, "./DevInfo/Mod"

    invoke-interface {p0, v8, v6}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 499
    sget-object v8, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_4 .. :try_end_4} :catch_5

    .line 504
    :goto_5
    :try_start_5
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/Man"

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v8, "./DevInfo/Man"

    invoke-interface {p0, v8, v5}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 506
    sget-object v8, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_5 .. :try_end_5} :catch_6

    .line 511
    :goto_6
    :try_start_6
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/Lang"

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v8, "./DevInfo/Lang"

    invoke-interface {p0, v8, v4}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 513
    sget-object v8, Lcom/asus/dm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 514
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 515
    .local v1, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v8, "DMHandlerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error register IO on: ./DevInfo/Lang: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 472
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 473
    .restart local v1       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v8, "DMHandlerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error register IO on: ./DevDetail/DmV: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 479
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 480
    .restart local v1       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v8, "DMHandlerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error register IO on: ./DevDetail/FwV: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 486
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 487
    .restart local v1       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v8, "DMHandlerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error register IO on: ./DevDetail/SwV: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 493
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_4
    move-exception v8

    move-object v1, v8

    .line 494
    .restart local v1       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v8, "DMHandlerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error register IO on: ./DevDetail/HwV: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 500
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_5
    move-exception v8

    move-object v1, v8

    .line 501
    .restart local v1       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v8, "DMHandlerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error register IO on: ./DevInfo/Mod: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 507
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_6
    move-exception v8

    move-object v1, v8

    .line 508
    .restart local v1       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v8, "DMHandlerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error register IO on: ./DevInfo/Man: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method
