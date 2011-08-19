.class public Lcom/infraware/filemanager/FmFileRecent;
.super Ljava/lang/Object;
.source "FmFileRecent.java"


# static fields
.field private static final m_nMaxRecentFileSize:I = 0x14

.field public static m_nRecentFileCount:I

.field public static m_strRecentFileList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput v0, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRecentFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "a_oContext"
    .parameter "a_strFilePath"

    .prologue
    .line 61
    sget-object v2, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v2, "recent_files"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, oPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/infraware/filemanager/FmFileRecent;->tagRecentFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    sget v2, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    if-lez v2, :cond_1

    invoke-static {p0}, Lcom/infraware/filemanager/FmFileRecent;->getRecentFileCount(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_1

    .line 72
    sget-object v2, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    :cond_1
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileRecent;->loadRecentFileList(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static clearRecentFile(Landroid/content/Context;)V
    .locals 5
    .parameter "a_oContext"

    .prologue
    const/4 v4, 0x0

    .line 123
    const-string v3, "recent_files"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 124
    .local v2, oPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    sput v4, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    .line 130
    sget-object v3, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 135
    :cond_0
    return-void

    .line 133
    :cond_1
    const/4 v1, 0x0

    .local v1, nCount:I
    :goto_0
    sget v3, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    if-ge v1, v3, :cond_0

    .line 134
    sget-object v3, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static deleteRecentFile(Landroid/content/Context;I)V
    .locals 4
    .parameter "a_oContext"
    .parameter "a_nIndex"

    .prologue
    .line 80
    sget-object v2, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget-object v2, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "recent_files"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    .local v1, oPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileRecent;->loadRecentFileList(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static deleteRecentFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "a_oContext"
    .parameter "a_strPath"

    .prologue
    .line 95
    sget-object v3, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const-string v3, "recent_files"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 106
    .local v2, oPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 107
    .local v1, mapAllPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileRecent;->loadRecentFileList(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getRecentFileCount(Landroid/content/Context;)I
    .locals 4
    .parameter "a_oContext"

    .prologue
    const/4 v3, 0x0

    .line 115
    const-string v2, "recent_files"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 116
    .local v1, oPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 117
    .local v0, mapAllPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez v1, :cond_0

    move v2, v3

    .line 119
    :goto_0
    return v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_0
.end method

.method public static loadRecentFileList(Landroid/content/Context;)V
    .locals 14
    .parameter "a_oContext"

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x14

    .line 17
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileRecent;->getRecentFileCount(Landroid/content/Context;)I

    move-result v9

    sput v9, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    .line 19
    sget v9, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    if-nez v9, :cond_0

    .line 58
    :goto_0
    return-void

    .line 25
    :cond_0
    sget v9, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    if-le v9, v12, :cond_1

    .line 26
    sput v12, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    .line 27
    :cond_1
    sget v9, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    new-array v9, v9, [Ljava/lang/String;

    sput-object v9, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    .line 29
    const-string v9, "recent_files"

    invoke-virtual {p0, v9, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 30
    .local v6, oPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 31
    .local v3, mapAllPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v1, hashIndex:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    sget v9, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    new-array v5, v9, [Ljava/lang/Long;

    .line 36
    .local v5, nIndexer:[Ljava/lang/Long;
    const/4 v4, 0x0

    .line 37
    .local v4, nCount:I
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 55
    :cond_2
    invoke-static {v5, v1}, Lcom/infraware/filemanager/FmFileRecent;->makeRecentFileList([Ljava/lang/Long;Ljava/util/HashMap;)V

    .line 57
    sput v4, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    goto :goto_0

    .line 37
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 38
    .local v7, strKeyString:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 40
    if-lt v4, v12, :cond_4

    .line 42
    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 46
    :cond_4
    const/4 v10, 0x0

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, szValue:[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 48
    .local v2, index:Ljava/lang/Long;
    aget-object v10, v8, v13

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    aput-object v2, v5, v4

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static makeRecentFileList([Ljava/lang/Long;Ljava/util/HashMap;)V
    .locals 7
    .parameter "a_nIndexer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, hashIndex:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v2, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 156
    :cond_0
    return-void

    .line 148
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, nCount:I
    array-length v3, p0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v1, p0, v4

    .line 153
    .local v1, nIndex:Ljava/lang/Long;
    sget-object v5, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, v0

    const/4 v6, 0x1

    sub-int v6, v2, v6

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v6

    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 151
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0
.end method

.method public static tagRecentFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "a_szFilePath"

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, szTest:Ljava/lang/String;
    return-object v0
.end method
