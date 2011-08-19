.class public Lcom/asus/dm/settings/MobileConnectionList;
.super Ljava/lang/Object;
.source "MobileConnectionList.java"


# static fields
.field public static final PREFERRED_APN_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dm/settings/MobileConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/dm/settings/MobileConnectionList;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "pContext"

    .prologue
    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/asus/dm/settings/MobileConnectionList;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "pContext"
    .parameter "numeric"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/asus/dm/settings/MobileConnectionList;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "pContext"
    .parameter "numeric"
    .parameter "preferApn"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/asus/dm/settings/MobileConnectionList;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dm/settings/MobileConnectionList;->mList:Ljava/util/ArrayList;

    .line 23
    invoke-direct {p0, p2, p3}, Lcom/asus/dm/settings/MobileConnectionList;->populateList(Ljava/lang/String;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "pContext"
    .parameter "preferApn"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/asus/dm/settings/MobileConnectionList;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method private populateList(Ljava/lang/String;Z)V
    .locals 9
    .parameter "numeric"
    .parameter "preferApn"

    .prologue
    const/4 v2, 0x0

    .line 43
    if-nez p1, :cond_3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, where:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_4

    .line 52
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnectionList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/dm/settings/MobileConnectionList;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, c:Landroid/database/Cursor;
    :goto_1
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    new-instance v8, Lcom/asus/dm/settings/MobileConnection;

    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnectionList;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0, v6}, Lcom/asus/dm/settings/MobileConnection;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 63
    .local v8, mc:Lcom/asus/dm/settings/MobileConnection;
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnectionList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 70
    .end local v8           #mc:Lcom/asus/dm/settings/MobileConnection;
    :cond_1
    if-eqz v6, :cond_2

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_2
    return-void

    .line 48
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 55
    :cond_4
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnectionList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #c:Landroid/database/Cursor;
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 68
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MobileConnectionList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "populateList error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    if-eqz v6, :cond_2

    goto :goto_2

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public add(Lcom/asus/dm/settings/MobileConnection;)V
    .locals 1
    .parameter "mc"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnectionList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public get(I)Lcom/asus/dm/settings/MobileConnection;
    .locals 1
    .parameter "location"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnectionList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dm/settings/MobileConnection;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/asus/dm/settings/MobileConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnectionList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public saveList()V
    .locals 3

    .prologue
    .line 78
    iget-object v2, p0, Lcom/asus/dm/settings/MobileConnectionList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dm/settings/MobileConnection;

    .line 79
    .local v1, mc:Lcom/asus/dm/settings/MobileConnection;
    invoke-virtual {v1}, Lcom/asus/dm/settings/MobileConnection;->save()V

    goto :goto_0

    .line 82
    .end local v1           #mc:Lcom/asus/dm/settings/MobileConnection;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asus/dm/settings/MobileConnectionList;->mList:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/asus/dm/settings/MobileConnectionList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
