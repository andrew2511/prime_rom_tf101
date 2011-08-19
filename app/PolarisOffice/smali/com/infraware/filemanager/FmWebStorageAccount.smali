.class public Lcom/infraware/filemanager/FmWebStorageAccount;
.super Ljava/lang/Object;
.source "FmWebStorageAccount.java"


# static fields
.field public static m_astrBoxnetAccountName:[Ljava/lang/String;

.field public static m_astrBoxnetAccountPW:[Ljava/lang/String;

.field public static m_astrGoogleAccountName:[Ljava/lang/String;

.field public static m_astrGoogleAccountPW:[Ljava/lang/String;

.field public static m_bConnected:Z

.field public static m_nBoxnetAccountCount:I

.field public static m_nCurrentMode:I

.field public static m_nGoogleAccountCount:I

.field public static m_strCurrentID:Ljava/lang/String;

.field public static m_strCurrentPW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x3

    sput v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nCurrentMode:I

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_bConnected:Z

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentPW:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "a_oContext"
    .parameter "a_strService"
    .parameter "a_strAccountName"
    .parameter "a_strAccountPW"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 201
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/infraware/filemanager/FmWebStorageAccount;->checkAvailableAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 202
    .local v8, result:I
    if-eqz v8, :cond_0

    move v0, v8

    .line 209
    :goto_0
    return v0

    .line 205
    :cond_0
    invoke-virtual {p0, p1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 206
    .local v7, oPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 207
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v9

    .line 209
    goto :goto_0
.end method

.method public static cancelAccountOperation()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->cancel()V

    .line 54
    return-void
.end method

.method public static cancelLogin()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->getServiceType()I

    move-result v1

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->logoutNotcareOperation(ILjava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_bConnected:Z

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentPW:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private static checkAvailableAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "a_oContext"
    .parameter "a_strService"
    .parameter "a_strNewAccountName"
    .parameter "a_strNewAccountPW"
    .parameter "a_strOldAccountName"
    .parameter "a_strOldAccountPW"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x8

    .line 250
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 251
    const/16 v0, -0x10

    .line 267
    :goto_0
    return v0

    .line 253
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 254
    const/16 v0, -0x11

    goto :goto_0

    .line 257
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    const/16 v0, -0x14

    goto :goto_0

    .line 260
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1, p2}, Lcom/infraware/filemanager/FmWebStorageAccount;->isExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 261
    goto :goto_0

    .line 264
    :cond_3
    if-nez p4, :cond_4

    invoke-static {p0, p1, p2}, Lcom/infraware/filemanager/FmWebStorageAccount;->isExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 265
    goto :goto_0

    .line 267
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteAccount(Landroid/content/Context;I)Z
    .locals 2
    .parameter "a_oContext"
    .parameter "a_nIndex"

    .prologue
    .line 212
    invoke-static {p1}, Lcom/infraware/filemanager/FmWebStorageAccount;->getServiceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/infraware/filemanager/FmWebStorageAccount;->getID(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/infraware/filemanager/FmWebStorageAccount;->deleteAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "a_oContext"
    .parameter "a_strService"
    .parameter "a_strAccountName"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 216
    sget-object v4, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v4, v6

    .line 241
    :goto_0
    return v4

    .line 219
    :cond_1
    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 220
    .local v2, oPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v3

    .line 225
    .local v3, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    if-eqz v3, :cond_3

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, nServiceType:I
    const-string v4, "google_account"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 228
    const/4 v1, 0x1

    .line 231
    :cond_2
    :goto_1
    invoke-virtual {v3, v1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->removeData(ILjava/lang/String;)V

    .line 234
    .end local v1           #nServiceType:I
    :cond_3
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->getCurrentServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    .line 235
    goto :goto_0

    .line 229
    .restart local v1       #nServiceType:I
    :cond_4
    const-string v4, "boxnet_account"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 230
    const/4 v1, 0x2

    goto :goto_1

    .line 237
    .end local v1           #nServiceType:I
    :cond_5
    invoke-virtual {p2, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    .line 238
    goto :goto_0

    .line 240
    :cond_6
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelLogin()V

    move v4, v5

    .line 241
    goto :goto_0
.end method

.method public static getAccountCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "a_oContext"
    .parameter "a_strService"

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 119
    .local v1, oPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 120
    .local v0, mapAllPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez v1, :cond_0

    .line 122
    :goto_0
    return v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_0
.end method

.method public static getAccountList(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "a_oContext"
    .parameter "a_strService"
    .parameter "a_strAccountName"
    .parameter "a_strAccountPW"

    .prologue
    .line 168
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 169
    .local v2, oPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 171
    .local v0, mapAllPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v1, 0x0

    .line 172
    .local v1, nCount:I
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    :cond_0
    return v1

    .line 172
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, strKeyString:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 175
    aput-object v3, p2, v1

    .line 176
    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAllAccountCount()I
    .locals 2

    .prologue
    .line 39
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nGoogleAccountCount:I

    sget v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nBoxnetAccountCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getCurrentServiceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 162
    const-string v0, "google_account"

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "boxnet_account"

    goto :goto_0
.end method

.method public static getID(I)Ljava/lang/String;
    .locals 1
    .parameter "a_nIndex"

    .prologue
    .line 138
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nGoogleAccountCount:I

    if-ge p0, v0, :cond_0

    .line 139
    sget-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrGoogleAccountName:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 142
    :goto_0
    return-object v0

    .line 141
    :cond_0
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nGoogleAccountCount:I

    sub-int/2addr p0, v0

    .line 142
    sget-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrBoxnetAccountName:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getPW(I)Ljava/lang/String;
    .locals 1
    .parameter "a_nIndex"

    .prologue
    .line 146
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nGoogleAccountCount:I

    if-ge p0, v0, :cond_0

    .line 147
    sget-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrGoogleAccountPW:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 150
    :goto_0
    return-object v0

    .line 149
    :cond_0
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nGoogleAccountCount:I

    sub-int/2addr p0, v0

    .line 150
    sget-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrBoxnetAccountPW:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getServiceName(I)Ljava/lang/String;
    .locals 1
    .parameter "a_nIndex"

    .prologue
    .line 154
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nGoogleAccountCount:I

    if-ge p0, v0, :cond_0

    .line 155
    const-string v0, "google_account"

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "boxnet_account"

    goto :goto_0
.end method

.method public static getServiceType()I
    .locals 2

    .prologue
    .line 84
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getTotalAccountCount(Landroid/content/Context;)I
    .locals 3
    .parameter "a_oContext"

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, nTotalAccountCount:I
    const-string v1, "google_account"

    invoke-static {p0, v1}, Lcom/infraware/filemanager/FmWebStorageAccount;->getAccountCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 113
    const-string v2, "boxnet_account"

    invoke-static {p0, v2}, Lcom/infraware/filemanager/FmWebStorageAccount;->getAccountCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 112
    add-int v0, v1, v2

    .line 114
    return v0
.end method

.method public static isExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "a_oContext"
    .parameter "a_strService"
    .parameter "a_strID"

    .prologue
    const/4 v6, 0x0

    .line 126
    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 127
    .local v2, oPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 129
    .local v0, mapAllPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v1, 0x0

    .line 130
    .local v1, nCount:I
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    move v4, v6

    .line 134
    :goto_0
    return v4

    .line 130
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    .local v3, strKeyString:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isLogined(I)Z
    .locals 4
    .parameter "a_nIndex"

    .prologue
    const/4 v3, 0x0

    .line 65
    sget-boolean v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_bConnected:Z

    if-nez v1, :cond_0

    move v1, v3

    .line 79
    :goto_0
    return v1

    .line 67
    :cond_0
    sget-object v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    move v1, v3

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {p0}, Lcom/infraware/filemanager/FmWebStorageAccount;->getID(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    const/4 v0, 0x0

    .line 74
    .local v0, nServiceType:I
    sget v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nGoogleAccountCount:I

    if-ge p0, v1, :cond_4

    .line 75
    const/4 v0, 0x1

    .line 79
    :goto_1
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v1

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->isLogin(ILjava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 77
    :cond_4
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public static loadAccountList(Landroid/content/Context;)V
    .locals 3
    .parameter "a_oContext"

    .prologue
    .line 92
    const-string v0, "google_account"

    invoke-static {p0, v0}, Lcom/infraware/filemanager/FmWebStorageAccount;->getAccountCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nGoogleAccountCount:I

    .line 93
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nGoogleAccountCount:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrGoogleAccountName:[Ljava/lang/String;

    .line 94
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nGoogleAccountCount:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrGoogleAccountPW:[Ljava/lang/String;

    .line 96
    const-string v0, "google_account"

    .line 97
    sget-object v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrGoogleAccountName:[Ljava/lang/String;

    .line 98
    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrGoogleAccountPW:[Ljava/lang/String;

    .line 95
    invoke-static {p0, v0, v1, v2}, Lcom/infraware/filemanager/FmWebStorageAccount;->getAccountList(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    const-string v0, "boxnet_account"

    invoke-static {p0, v0}, Lcom/infraware/filemanager/FmWebStorageAccount;->getAccountCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nBoxnetAccountCount:I

    .line 101
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nBoxnetAccountCount:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrBoxnetAccountName:[Ljava/lang/String;

    .line 102
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nBoxnetAccountCount:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrBoxnetAccountPW:[Ljava/lang/String;

    .line 104
    const-string v0, "boxnet_account"

    .line 105
    sget-object v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrBoxnetAccountName:[Ljava/lang/String;

    .line 106
    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_astrBoxnetAccountPW:[Ljava/lang/String;

    .line 103
    invoke-static {p0, v0, v1, v2}, Lcom/infraware/filemanager/FmWebStorageAccount;->getAccountList(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public static setCurrentAccount(I)V
    .locals 1
    .parameter "a_nIndex"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/infraware/filemanager/FmWebStorageAccount;->getID(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    .line 44
    invoke-static {p0}, Lcom/infraware/filemanager/FmWebStorageAccount;->getPW(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentPW:Ljava/lang/String;

    .line 46
    sget v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nGoogleAccountCount:I

    if-ge p0, v0, :cond_0

    .line 47
    const/4 v0, 0x3

    sput v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nCurrentMode:I

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x4

    sput v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nCurrentMode:I

    goto :goto_0
.end method

.method public static updateAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "a_oContext"
    .parameter "a_strService"
    .parameter "a_strOldAccountName"
    .parameter "a_strNewAccountName"
    .parameter "a_strOldAccountPW"
    .parameter "a_strNewAccountPW"

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/infraware/filemanager/FmWebStorageAccount;->checkAvailableAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 185
    .local p4, result:I
    if-eqz p4, :cond_0

    move p0, p4

    .line 197
    .end local p0
    .end local p1
    .end local p4           #result:I
    :goto_0
    return p0

    .line 188
    .restart local p0
    .restart local p1
    .restart local p4       #result:I
    :cond_0
    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .end local p4           #result:I
    move-result-object p1

    .line 189
    .local p1, oPrefs:Landroid/content/SharedPreferences;
    const-string p0, ""

    .end local p0
    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 190
    const/16 p0, -0x13

    goto :goto_0

    .line 192
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 193
    .local p0, mapAllPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 194
    .local p0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {p0, p3, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    const/4 p0, 0x0

    goto :goto_0
.end method
