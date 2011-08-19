.class public Lcom/asus/cm/util/DMHandlerHelper;
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

.field static mExecHandlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/vdm/NodeExecuteHandler;",
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

    .line 33
    sput v0, Lcom/asus/cm/util/DMHandlerHelper;->mMmsTreeNum:I

    .line 34
    sput v0, Lcom/asus/cm/util/DMHandlerHelper;->mBrwTreeNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDMHandlerHelper()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    .line 60
    sput-object v0, Lcom/asus/cm/util/DMHandlerHelper;->mAddHandlerList:Ljava/util/ArrayList;

    .line 61
    sput-object v0, Lcom/asus/cm/util/DMHandlerHelper;->mDelHandlerList:Ljava/util/ArrayList;

    .line 62
    sput-object v0, Lcom/asus/cm/util/DMHandlerHelper;->mExecHandlerList:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method protected static initDMHandlerHelper(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 1
    .parameter "context"
    .parameter "pTree"

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/asus/cm/util/DMHandlerHelper;->mAddHandlerList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/asus/cm/util/DMHandlerHelper;->mDelHandlerList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/asus/cm/util/DMHandlerHelper;->mExecHandlerList:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method protected static registerBookMarkIOHandler(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)V
    .locals 10
    .parameter "pTree"
    .parameter "pBookmark_Uri"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/asus/cm/util/CMUtils;->setCreateBootmarkInDb(Z)V

    .line 118
    invoke-static {p0, p1}, Lcom/asus/cm/util/CMUtils;->getAllChildURIs(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 119
    .local v0, bookMarkLeafNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
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

    .line 122
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

    .line 123
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Lcom/asus/cm/handler/BookMarksIOHandler;

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

    sget-object v3, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/asus/cm/handler/BookMarksIOHandler;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 129
    .local v1, ioTemp:Lcom/asus/cm/handler/BookMarksIOHandler;
    sget-object v2, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
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

    invoke-static {v2, v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
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

    .line 138
    .end local v1           #ioTemp:Lcom/asus/cm/handler/BookMarksIOHandler;
    :goto_1
    new-instance v1, Lcom/asus/cm/handler/BookMarksDelHandler;

    sget-object v2, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    const-string v3, "url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/asus/cm/handler/BookMarksDelHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    .local v1, delTemp:Lcom/asus/cm/handler/BookMarksDelHandler;
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

    invoke-static {v2, v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 142
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

    .line 146
    :goto_2
    sget-object v2, Lcom/asus/cm/util/DMHandlerHelper;->mDelHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #delTemp:Lcom/asus/cm/handler/BookMarksDelHandler;
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

    .line 166
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 133
    .local v1, ioTemp:Lcom/asus/cm/handler/BookMarksIOHandler;
    :catch_0
    move-exception v1

    .line 134
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

    invoke-static {v2, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    .local v1, delTemp:Lcom/asus/cm/handler/BookMarksDelHandler;
    :catch_1
    move-exception v2

    .line 144
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

    invoke-static {v3, v2}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 150
    .end local v1           #delTemp:Lcom/asus/cm/handler/BookMarksDelHandler;
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

    invoke-static {v1, v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    new-instance v1, Lcom/asus/cm/handler/BookMarksDelHandler;

    sget-object v2, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/asus/cm/handler/BookMarksDelHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    .restart local v1       #delTemp:Lcom/asus/cm/handler/BookMarksDelHandler;
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

    .line 158
    .end local v1           #delTemp:Lcom/asus/cm/handler/BookMarksDelHandler;
    :goto_4
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/asus/cm/util/CMUtils;->setCreateBootmarkInDb(Z)V

    .line 160
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

    .line 164
    :goto_5
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/asus/cm/util/CMUtils;->setCreateBootmarkInDb(Z)V

    goto/16 :goto_3

    .line 155
    .restart local v1       #delTemp:Lcom/asus/cm/handler/BookMarksDelHandler;
    :catch_2
    move-exception v1

    .line 156
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

    invoke-static {v2, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 161
    :catch_3
    move-exception v1

    .line 162
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

    invoke-static {v2, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 169
    .end local v0           #c:Landroid/database/Cursor;
    .end local v6           #bookMarkLeafName:Ljava/lang/String;
    :cond_1
    const-string v0, "bookmark = 1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
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

    invoke-static {v0, v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    sget-object v0, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

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

    .line 176
    .restart local v0       #c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    :cond_2
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, leafName:Ljava/lang/String;
    const-string v1, "url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
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

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
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

    .line 189
    .end local v2           #leafName:Ljava/lang/String;
    :goto_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 194
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/asus/cm/util/CMUtils;->setCreateBootmarkInDb(Z)V

    .line 195
    .end local p0
    return-void

    .line 184
    .restart local v2       #leafName:Ljava/lang/String;
    .restart local p0
    :catch_4
    move-exception v1

    .line 185
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

    invoke-static {v3, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected static registerBookmarkAddCallback(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)V
    .locals 5
    .parameter "pTree"
    .parameter "pUri"

    .prologue
    .line 105
    const-string v2, "./Settings/Book-Marks"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    new-instance v1, Lcom/asus/cm/handler/BookMarksAddHandler;

    sget-object v2, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/asus/cm/handler/BookMarksAddHandler;-><init>(Lcom/asus/dmlib/vdm/VdmTree;Landroid/content/Context;)V

    .line 107
    .local v1, temp:Lcom/asus/cm/handler/BookMarksAddHandler;
    sget-object v2, Lcom/asus/cm/util/DMHandlerHelper;->mAddHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :try_start_0
    invoke-interface {p0, p1, v1}, Lcom/asus/dmlib/vdm/VdmTree;->registerAdd(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeAddHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1           #temp:Lcom/asus/cm/handler/BookMarksAddHandler;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v1       #temp:Lcom/asus/cm/handler/BookMarksAddHandler;
    :catch_0
    move-exception v0

    .line 111
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

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static registerBrowserCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/settings/MobileConnectionList;)V
    .locals 18
    .parameter "pTree"
    .parameter "pMobileConList"

    .prologue
    .line 331
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

    .line 333
    .local v6, brwLeafNameList:[Ljava/lang/String;
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 334
    .local v7, brwTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/cm/handler/APNHandler$HandleType;>;"
    const-string v3, "Proxy"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->PROXY:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v3, "Port"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->PORT:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v3, "Server"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->SERVER:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v3, "ToAPN"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->ToAPN:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
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

    .line 342
    .local v3, apnLeafNameList:[Ljava/lang/String;
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 343
    .local v4, apnTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/cm/handler/APNHandler$HandleType;>;"
    const-string v5, "APN"

    sget-object v8, Lcom/asus/cm/handler/APNHandler$HandleType;->APN:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v5, "Name"

    sget-object v8, Lcom/asus/cm/handler/APNHandler$HandleType;->NAME:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v5, "Username"

    sget-object v8, Lcom/asus/cm/handler/APNHandler$HandleType;->USERNAME:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v5, "Password"

    sget-object v8, Lcom/asus/cm/handler/APNHandler$HandleType;->PASSWORD:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v5, "APN-type"

    sget-object v8, Lcom/asus/cm/handler/APNHandler$HandleType;->APN_TYPE:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v5, "MCC"

    sget-object v8, Lcom/asus/cm/handler/APNHandler$HandleType;->MCC:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v5, "MNC"

    sget-object v8, Lcom/asus/cm/handler/APNHandler$HandleType;->MNC:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/asus/cm/settings/MobileConnectionList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 353
    .local v13, mobileConIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/asus/cm/settings/MobileConnection;>;"
    const/16 p1, 0x1

    .local p1, count:I
    move/from16 v8, p1

    .end local p1           #count:I
    .local v8, count:I
    :goto_0
    sget p1, Lcom/asus/cm/util/DMHandlerHelper;->mBrwTreeNum:I

    move v0, v8

    move/from16 v1, p1

    if-gt v0, v1, :cond_6

    .line 354
    const/16 p1, 0x0

    .local p1, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    move-object/from16 v12, p1

    .line 356
    .end local p1           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v12, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 357
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    check-cast v12, Lcom/asus/cm/settings/MobileConnection;

    .line 359
    .restart local v12       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    invoke-virtual {v12}, Lcom/asus/cm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v5, "default"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 360
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

    .line 361
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

    invoke-static {v9, v14}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v9, 0x0

    .line 365
    .local v9, temp:Lcom/asus/cm/handler/APNHandler;
    const-string v9, "ToAPN"

    .end local v9           #temp:Lcom/asus/cm/handler/APNHandler;
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 366
    new-instance v14, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-direct {v14, v9, v12}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 369
    .local v14, temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 386
    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    :goto_2
    sget-object v9, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v5, v10, 0x1

    .end local v10           #i$:I
    .local v5, i$:I
    move v10, v5

    .end local v5           #i$:I
    .restart local v10       #i$:I
    goto :goto_1

    .line 371
    .local v5, brwLeafName:Ljava/lang/String;
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
    :catch_0
    move-exception v9

    .line 372
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

    invoke-static {v15, v5}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    .line 374
    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    goto :goto_2

    .line 376
    .local v5, brwLeafName:Ljava/lang/String;
    :cond_1
    new-instance v14, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "./Settings/BROWSER-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v9, v15}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Ljava/lang/String;)V

    .line 379
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 384
    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    goto/16 :goto_2

    .line 381
    .local v5, brwLeafName:Ljava/lang/String;
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
    :catch_1
    move-exception v9

    .line 382
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

    invoke-static {v15, v5}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    goto/16 :goto_2

    .line 389
    .end local v5           #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 390
    .local p1, apnLeafName:Ljava/lang/String;
    const-string v9, "DMHandlerHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "register URI : ./Settings/APN-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/asus/cm/util/DMHandlerHelper;->mMmsTreeNum:I

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

    invoke-static {v9, v14}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v14, Lcom/asus/cm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-direct {v14, v9, v12}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 397
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/APN-"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v15, Lcom/asus/cm/util/DMHandlerHelper;->mMmsTreeNum:I

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

    .line 404
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_4
    sget-object p1, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 p1, v10, 0x1

    .end local v10           #i$:I
    .local p1, i$:I
    move/from16 v10, p1

    .end local p1           #i$:I
    .restart local v10       #i$:I
    goto :goto_3

    .line 400
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 401
    .restart local v9       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/APN-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/asus/cm/util/DMHandlerHelper;->mMmsTreeNum:I

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

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 353
    .end local v12           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v10, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :goto_5
    add-int/lit8 p1, v8, 0x1

    .end local v8           #count:I
    .local p1, count:I
    move/from16 v8, p1

    .end local p1           #count:I
    .restart local v8       #count:I
    goto/16 :goto_0

    .line 411
    .end local v5           #i$:I
    .end local v9           #len$:I
    .end local v10           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .restart local v12       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
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

    .line 412
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

    invoke-static {v9, v14}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v14, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v15, Lcom/asus/cm/settings/MobileConnection;

    sget-object v16, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v15 .. v16}, Lcom/asus/cm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    invoke-direct {v14, v9, v15}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 419
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 426
    .end local v5           #brwLeafName:Ljava/lang/String;
    :goto_7
    sget-object v5, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v5, v10, 0x1

    .end local v10           #i$:I
    .local v5, i$:I
    move v10, v5

    .end local v5           #i$:I
    .restart local v10       #i$:I
    goto :goto_6

    .line 421
    .local v5, brwLeafName:Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 422
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

    invoke-static {v15, v5}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 429
    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 430
    .local p1, apnLeafName:Ljava/lang/String;
    const-string v9, "DMHandlerHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "register URI : ./Settings/APN-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/asus/cm/util/DMHandlerHelper;->mMmsTreeNum:I

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

    invoke-static {v9, v14}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v14, Lcom/asus/cm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v15, Lcom/asus/cm/settings/MobileConnection;

    sget-object v16, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v15 .. v16}, Lcom/asus/cm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    invoke-direct {v14, v9, v15}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 437
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "./Settings/APN-"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v15, Lcom/asus/cm/util/DMHandlerHelper;->mMmsTreeNum:I

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

    .line 444
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_9
    sget-object p1, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 p1, v10, 0x1

    .end local v10           #i$:I
    .local p1, i$:I
    move/from16 v10, p1

    .end local p1           #i$:I
    .restart local v10       #i$:I
    goto :goto_8

    .line 439
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 440
    .restart local v9       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v15, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error register IO on:./Settings/APN-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/asus/cm/util/DMHandlerHelper;->mMmsTreeNum:I

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

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 447
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
    :cond_6
    return-void

    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
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

    .end local v12           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v10, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    goto/16 :goto_5
.end method

.method public static registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 3
    .parameter "DMService"
    .parameter "pTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/cm/exception/DMInvalidException;
        }
    .end annotation

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    new-instance v1, Lcom/asus/cm/exception/DMInvalidException;

    const-string v2, "when call DMTmoTreeHandlerHelper.registerHandlers, agr DMService is null"

    invoke-direct {v1, v2}, Lcom/asus/cm/exception/DMInvalidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    if-nez p1, :cond_1

    .line 74
    new-instance v1, Lcom/asus/cm/exception/DMInvalidException;

    const-string v2, "when call DMTmoTreeHandlerHelper.registerHandlers, agr pTree is null"

    invoke-direct {v1, v2}, Lcom/asus/cm/exception/DMInvalidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_1
    sput-object p0, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    .line 79
    sget-object v1, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/asus/cm/util/DMHandlerHelper;->initDMHandlerHelper(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 80
    new-instance v0, Lcom/asus/cm/settings/MobileConnectionList;

    sget-object v1, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/asus/cm/settings/MobileConnectionList;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, mcList:Lcom/asus/cm/settings/MobileConnectionList;
    invoke-static {p1, v0}, Lcom/asus/cm/util/DMHandlerHelper;->registerMMSCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/settings/MobileConnectionList;)V

    .line 99
    invoke-static {p1}, Lcom/asus/cm/util/DMHandlerHelper;->registerVersionCallback(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 101
    return-void
.end method

.method protected static registerMMSCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/settings/MobileConnectionList;)V
    .locals 18
    .parameter "pTree"
    .parameter "pMobileConList"

    .prologue
    .line 201
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

    .line 203
    .local v10, mmsLeafNameList:[Ljava/lang/String;
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    .line 204
    .local v11, mmsTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/cm/handler/APNHandler$HandleType;>;"
    const-string v3, "MMSC"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->MMSC:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v11, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v3, "MMS-Proxy"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->MMS_PROXY:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v11, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v3, "MMS-Port"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->MMS_PORT:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v11, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v3, "ToAPN"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->ToAPN:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v11, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
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

    .line 212
    .local v3, apnLeafNameList:[Ljava/lang/String;
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 213
    .local v4, apnTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/cm/handler/APNHandler$HandleType;>;"
    const-string v5, "APN"

    sget-object v6, Lcom/asus/cm/handler/APNHandler$HandleType;->APN:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v5, "Name"

    sget-object v6, Lcom/asus/cm/handler/APNHandler$HandleType;->NAME:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v5, "Username"

    sget-object v6, Lcom/asus/cm/handler/APNHandler$HandleType;->USERNAME:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v5, "Password"

    sget-object v6, Lcom/asus/cm/handler/APNHandler$HandleType;->PASSWORD:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v5, "APN-type"

    sget-object v6, Lcom/asus/cm/handler/APNHandler$HandleType;->APN_TYPE:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v5, "MCC"

    sget-object v6, Lcom/asus/cm/handler/APNHandler$HandleType;->MCC:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v5, "MNC"

    sget-object v6, Lcom/asus/cm/handler/APNHandler$HandleType;->MNC:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/asus/cm/settings/MobileConnectionList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 223
    .local v13, mobileConIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/asus/cm/settings/MobileConnection;>;"
    const/16 p1, 0x1

    .local p1, count:I
    move/from16 v6, p1

    .end local p1           #count:I
    .local v6, count:I
    :goto_0
    sget p1, Lcom/asus/cm/util/DMHandlerHelper;->mMmsTreeNum:I

    move v0, v6

    move/from16 v1, p1

    if-gt v0, v1, :cond_6

    .line 224
    const/16 p1, 0x0

    .local p1, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    move-object/from16 v12, p1

    .line 226
    .end local p1           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v12, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 227
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    check-cast v12, Lcom/asus/cm/settings/MobileConnection;

    .line 229
    .restart local v12       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    invoke-virtual {v12}, Lcom/asus/cm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v5, "mms"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
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

    .line 233
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

    invoke-static {v5, v14, v15}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    const/4 v5, 0x0

    .line 239
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    const-string v5, "ToAPN"

    .end local v5           #temp:Lcom/asus/cm/handler/APNHandler;
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 240
    new-instance v14, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-direct {v14, v5, v12}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 243
    .local v14, temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 261
    .end local v9           #mmsLeafName:Ljava/lang/String;
    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
    .restart local v5       #temp:Lcom/asus/cm/handler/APNHandler;
    :goto_2
    sget-object v9, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v5, v7, 0x1

    .end local v7           #i$:I
    .local v5, i$:I
    move v7, v5

    .end local v5           #i$:I
    .restart local v7       #i$:I
    goto :goto_1

    .line 245
    .restart local v9       #mmsLeafName:Ljava/lang/String;
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
    :catch_0
    move-exception v5

    .line 246
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

    invoke-static {v15, v5}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    .line 248
    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    goto :goto_2

    .line 250
    .end local v5           #temp:Lcom/asus/cm/handler/APNHandler;
    .restart local v9       #mmsLeafName:Ljava/lang/String;
    :cond_1
    new-instance v14, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "./Settings/APN-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v5, v15}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Ljava/lang/String;)V

    .line 253
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 258
    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
    .restart local v5       #temp:Lcom/asus/cm/handler/APNHandler;
    goto/16 :goto_2

    .line 255
    .end local v5           #temp:Lcom/asus/cm/handler/APNHandler;
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
    :catch_1
    move-exception v5

    .line 256
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

    invoke-static {v15, v5}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    goto/16 :goto_2

    .line 265
    .end local v5           #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 266
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

    invoke-static {v7, v14, v15}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 269
    new-instance v14, Lcom/asus/cm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-direct {v14, v7, v12}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 273
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 280
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_4
    sget-object p1, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 p1, v8, 0x1

    .end local v8           #i$:I
    .local p1, i$:I
    move/from16 v8, p1

    .end local p1           #i$:I
    .restart local v8       #i$:I
    goto :goto_3

    .line 275
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 276
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

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 223
    .end local v12           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v8, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :goto_5
    add-int/lit8 p1, v6, 0x1

    .end local v6           #count:I
    .local p1, count:I
    move/from16 v6, p1

    .end local p1           #count:I
    .restart local v6       #count:I
    goto/16 :goto_0

    .line 289
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .restart local v12       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
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

    .line 290
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

    invoke-static {v5, v14, v15}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 293
    new-instance v14, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v15, Lcom/asus/cm/settings/MobileConnection;

    sget-object v16, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v15 .. v16}, Lcom/asus/cm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    invoke-direct {v14, v5, v15}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 297
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 304
    .end local v9           #mmsLeafName:Ljava/lang/String;
    :goto_7
    sget-object v5, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v5, v7, 0x1

    .end local v7           #i$:I
    .restart local v5       #i$:I
    move v7, v5

    .end local v5           #i$:I
    .restart local v7       #i$:I
    goto :goto_6

    .line 299
    .restart local v9       #mmsLeafName:Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 300
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

    invoke-static {v15, v5}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 307
    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 308
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

    invoke-static {v7, v14}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v14, Lcom/asus/cm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v15, Lcom/asus/cm/settings/MobileConnection;

    sget-object v16, Lcom/asus/cm/util/DMHandlerHelper;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v15 .. v16}, Lcom/asus/cm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    invoke-direct {v14, v7, v15}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 315
    .restart local v14       #temp:Lcom/asus/cm/handler/APNHandler;
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

    .line 322
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_9
    sget-object p1, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 p1, v8, 0x1

    .end local v8           #i$:I
    .local p1, i$:I
    move/from16 v8, p1

    .end local p1           #i$:I
    .restart local v8       #i$:I
    goto :goto_8

    .line 317
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 318
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

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 325
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .end local v14           #temp:Lcom/asus/cm/handler/APNHandler;
    :cond_6
    return-void

    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v12       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
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

    .end local v12           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v8, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    goto/16 :goto_5
.end method

.method protected static registerVersionCallback(Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 11
    .parameter "pTree"

    .prologue
    .line 459
    if-nez p0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 462
    :cond_0
    new-instance v0, Lcom/asus/cm/handler/VersionHandler;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/asus/cm/handler/VersionHandler;-><init>(I)V

    .line 463
    .local v0, dmcv:Lcom/asus/cm/handler/VersionHandler;
    new-instance v2, Lcom/asus/cm/handler/VersionHandler;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Lcom/asus/cm/handler/VersionHandler;-><init>(I)V

    .line 464
    .local v2, fwv:Lcom/asus/cm/handler/VersionHandler;
    new-instance v7, Lcom/asus/cm/handler/VersionHandler;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/asus/cm/handler/VersionHandler;-><init>(I)V

    .line 465
    .local v7, swv:Lcom/asus/cm/handler/VersionHandler;
    new-instance v3, Lcom/asus/cm/handler/VersionHandler;

    const/4 v8, 0x3

    invoke-direct {v3, v8}, Lcom/asus/cm/handler/VersionHandler;-><init>(I)V

    .line 466
    .local v3, hwv:Lcom/asus/cm/handler/VersionHandler;
    new-instance v6, Lcom/asus/cm/handler/VersionHandler;

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Lcom/asus/cm/handler/VersionHandler;-><init>(I)V

    .line 467
    .local v6, mod:Lcom/asus/cm/handler/VersionHandler;
    new-instance v5, Lcom/asus/cm/handler/VersionHandler;

    const/4 v8, 0x5

    invoke-direct {v5, v8}, Lcom/asus/cm/handler/VersionHandler;-><init>(I)V

    .line 468
    .local v5, man:Lcom/asus/cm/handler/VersionHandler;
    new-instance v4, Lcom/asus/cm/handler/VersionHandler;

    const/4 v8, 0x6

    invoke-direct {v4, v8}, Lcom/asus/cm/handler/VersionHandler;-><init>(I)V

    .line 471
    .local v4, lang:Lcom/asus/cm/handler/VersionHandler;
    :try_start_0
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/DmV"

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v8, "./DevInfo/DmV"

    invoke-interface {p0, v8, v0}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 473
    sget-object v8, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    :goto_1
    :try_start_1
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/FwV"

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v8, "./DevDetail/FwV"

    invoke-interface {p0, v8, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 480
    sget-object v8, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 485
    :goto_2
    :try_start_2
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/SwV"

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v8, "./DevDetail/SwV"

    invoke-interface {p0, v8, v7}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 487
    sget-object v8, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_3

    .line 492
    :goto_3
    :try_start_3
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/HwV"

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v8, "./DevDetail/HwV"

    invoke-interface {p0, v8, v3}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 494
    sget-object v8, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_3 .. :try_end_3} :catch_4

    .line 499
    :goto_4
    :try_start_4
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/Mod"

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v8, "./DevInfo/Mod"

    invoke-interface {p0, v8, v6}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 501
    sget-object v8, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_4 .. :try_end_4} :catch_5

    .line 506
    :goto_5
    :try_start_5
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/Man"

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v8, "./DevInfo/Man"

    invoke-interface {p0, v8, v5}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 508
    sget-object v8, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_5 .. :try_end_5} :catch_6

    .line 513
    :goto_6
    :try_start_6
    const-string v8, "DMHandlerHelper"

    const-string v9, "register IO on:./DevInfo/Lang"

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v8, "./DevInfo/Lang"

    invoke-interface {p0, v8, v4}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 515
    sget-object v8, Lcom/asus/cm/util/DMHandlerHelper;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 516
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 517
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

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 475
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

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 481
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 482
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

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 488
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 489
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

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 495
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_4
    move-exception v8

    move-object v1, v8

    .line 496
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

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 502
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_5
    move-exception v8

    move-object v1, v8

    .line 503
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

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 509
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_6
    move-exception v8

    move-object v1, v8

    .line 510
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

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method
