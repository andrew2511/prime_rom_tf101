.class public Lcom/asus/dm/handler/BookMarksDelHandler;
.super Ljava/lang/Object;
.source "BookMarksDelHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeDeleteHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "pContext"
    .parameter "pUrl"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/asus/dm/handler/BookMarksDelHandler;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/asus/dm/handler/BookMarksDelHandler;->mUrl:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private setupBookMark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "pUrl"
    .parameter "pTitle"

    .prologue
    const/4 v2, 0x0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupBookMark() of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " invoking...."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bookmark = 1 AND title= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, where:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "where clouse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 38
    iget-object v0, p0, Lcom/asus/dm/handler/BookMarksDelHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 42
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v7, Lcom/asus/dm/settings/BookMark;

    iget-object v0, p0, Lcom/asus/dm/handler/BookMarksDelHandler;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, v6}, Lcom/asus/dm/settings/BookMark;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 44
    .local v7, mark:Lcom/asus/dm/settings/BookMark;
    invoke-virtual {v7}, Lcom/asus/dm/settings/BookMark;->delete()V

    .line 45
    invoke-virtual {v7}, Lcom/asus/dm/settings/BookMark;->save()V

    .line 46
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 48
    .end local v7           #mark:Lcom/asus/dm/settings/BookMark;
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .parameter "pNodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 23
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, urlTitle:Ljava/lang/String;
    invoke-static {}, Lcom/asus/dm/util/DMUtils;->getCreateBootmarkInDb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksDelHandler;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/asus/dm/handler/BookMarksDelHandler;->setupBookMark(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method
