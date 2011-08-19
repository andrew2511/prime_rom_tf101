.class public Lcom/newspaperdirect/pressreader/android/core/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;
    }
.end annotation


# static fields
.field private static final DEFAULT_APPLICATION_URL:Ljava/lang/String; = "http://www.pressdisplay.com/pressdisplay/"

.field private static final PREF_ACTIVE_SERVICE_NAME:Ljava/lang/String; = "active_service_name"

.field private static activeService:Lcom/newspaperdirect/pressreader/android/core/Service;

.field private static services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/newspaperdirect/pressreader/android/core/Service;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivationNumber:Ljava/lang/String;

.field private mActivationType:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

.field private mApplicationUrl:Ljava/lang/String;

.field private mClientName:Ljava/lang/String;

.field private mId:J

.field private mIsActive:Z

.field private mName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;)Lcom/newspaperdirect/pressreader/android/core/Service;
    .locals 7
    .parameter "name"
    .parameter "clientName"
    .parameter "url"
    .parameter "applicationUrl"
    .parameter "userName"
    .parameter "activationNumber"
    .parameter "activationType"

    .prologue
    const/4 v6, 0x0

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, newService:Z
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 130
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->loadServices()V

    .line 131
    :cond_0
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 132
    .local v1, result:Lcom/newspaperdirect/pressreader/android/core/Service;
    if-nez v1, :cond_1

    .line 133
    const/4 v0, 0x1

    .line 134
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/Service;

    .end local v1           #result:Lcom/newspaperdirect/pressreader/android/core/Service;
    invoke-direct {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;-><init>()V

    .line 136
    .restart local v1       #result:Lcom/newspaperdirect/pressreader/android/core/Service;
    :cond_1
    iput-object p0, v1, Lcom/newspaperdirect/pressreader/android/core/Service;->mName:Ljava/lang/String;

    .line 137
    iput-object p1, v1, Lcom/newspaperdirect/pressreader/android/core/Service;->mClientName:Ljava/lang/String;

    .line 138
    iput-object p2, v1, Lcom/newspaperdirect/pressreader/android/core/Service;->mUrl:Ljava/lang/String;

    .line 139
    if-nez p3, :cond_2

    const-string v2, "http://www.pressdisplay.com/pressdisplay/"

    :goto_0
    iput-object v2, v1, Lcom/newspaperdirect/pressreader/android/core/Service;->mApplicationUrl:Ljava/lang/String;

    .line 140
    iput-object p4, v1, Lcom/newspaperdirect/pressreader/android/core/Service;->mUserName:Ljava/lang/String;

    .line 141
    iput-object p5, v1, Lcom/newspaperdirect/pressreader/android/core/Service;->mActivationNumber:Ljava/lang/String;

    .line 142
    iput-object p6, v1, Lcom/newspaperdirect/pressreader/android/core/Service;->mActivationType:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    .line 143
    if-eqz v0, :cond_5

    .line 144
    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/trx/ServiceDbAdapter;->insert(Lcom/newspaperdirect/pressreader/android/core/Service;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/newspaperdirect/pressreader/android/core/Service;->mId:J

    .line 145
    iget-wide v2, v1, Lcom/newspaperdirect/pressreader/android/core/Service;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move-object v2, v6

    .line 151
    :goto_1
    return-object v2

    :cond_2
    move-object v2, p3

    .line 139
    goto :goto_0

    .line 146
    :cond_3
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v2, v1

    .line 151
    goto :goto_1

    .line 148
    :cond_5
    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/trx/ServiceDbAdapter;->update(Lcom/newspaperdirect/pressreader/android/core/Service;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v6

    .line 149
    goto :goto_1
.end method

.method public static get(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Service;
    .locals 1
    .parameter "name"

    .prologue
    .line 115
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->loadServices()V

    .line 117
    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/Service;

    return-object p0
.end method

.method public static getActive()Lcom/newspaperdirect/pressreader/android/core/Service;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->loadServices()V

    .line 123
    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/Service;->activeService:Lcom/newspaperdirect/pressreader/android/core/Service;

    return-object v0
.end method

.method public static getDefault()Lcom/newspaperdirect/pressreader/android/core/Service;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 156
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->loadServices()V

    .line 157
    :cond_0
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v3

    .line 163
    :goto_0
    return-object v1

    .line 159
    :cond_1
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v1, v3

    .line 163
    goto :goto_0

    .line 159
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 160
    .local v0, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->isImplicitlyActivated()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 161
    goto :goto_0
.end method

.method public static getServices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->loadServices()V

    .line 105
    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getServicesCount()I
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->loadServices()V

    .line 111
    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method private static loadServices()V
    .locals 16

    .prologue
    const/4 v15, 0x1

    .line 167
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, cur:Landroid/database/Cursor;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/trx/ServiceDbAdapter;->getServices()Landroid/database/Cursor;

    move-result-object v1

    .line 171
    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-nez v13, :cond_2

    .line 173
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 174
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 178
    :cond_2
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    .line 179
    .local v11, preferences:Landroid/content/SharedPreferences;
    const-string v13, "active_service_name"

    const/4 v14, 0x0

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, activeServiceName:Ljava/lang/String;
    const-string v13, "id"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 182
    .local v7, idxId:I
    const-string v13, "name"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 183
    .local v8, idxName:I
    const-string v13, "client_name"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 184
    .local v6, idxClientName:I
    const-string v13, "url"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 185
    .local v9, idxUrl:I
    const-string v13, "application_url"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 186
    .local v5, idxApplicationUrl:I
    const-string v13, "user_name"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 187
    .local v10, idxUserName:I
    const-string v13, "activation_number"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 188
    .local v3, idxActivationNumber:I
    const-string v13, "activation_type"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 190
    .local v4, idxActivationType:I
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 206
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 207
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 209
    sget-object v13, Lcom/newspaperdirect/pressreader/android/core/Service;->activeService:Lcom/newspaperdirect/pressreader/android/core/Service;

    if-nez v13, :cond_0

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 211
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v13, "active_service_name"

    invoke-interface {v2, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 191
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_4
    new-instance v12, Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-direct {v12}, Lcom/newspaperdirect/pressreader/android/core/Service;-><init>()V

    .line 192
    .local v12, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/newspaperdirect/pressreader/android/core/Service;->mId:J

    .line 193
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/newspaperdirect/pressreader/android/core/Service;->mName:Ljava/lang/String;

    .line 194
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/newspaperdirect/pressreader/android/core/Service;->mClientName:Ljava/lang/String;

    .line 195
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/newspaperdirect/pressreader/android/core/Service;->mUrl:Ljava/lang/String;

    .line 196
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/newspaperdirect/pressreader/android/core/Service;->mApplicationUrl:Ljava/lang/String;

    .line 197
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/newspaperdirect/pressreader/android/core/Service;->mUserName:Ljava/lang/String;

    .line 198
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/newspaperdirect/pressreader/android/core/Service;->mActivationNumber:Ljava/lang/String;

    .line 199
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v15, :cond_5

    sget-object v13, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->Explicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    :goto_2
    iput-object v13, v12, Lcom/newspaperdirect/pressreader/android/core/Service;->mActivationType:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    .line 200
    sget-object v13, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    iget-object v14, v12, Lcom/newspaperdirect/pressreader/android/core/Service;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v13, v12, Lcom/newspaperdirect/pressreader/android/core/Service;->mName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 202
    iput-boolean v15, v12, Lcom/newspaperdirect/pressreader/android/core/Service;->mIsActive:Z

    .line 203
    sput-object v12, Lcom/newspaperdirect/pressreader/android/core/Service;->activeService:Lcom/newspaperdirect/pressreader/android/core/Service;

    goto :goto_1

    .line 199
    :cond_5
    sget-object v13, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->Implicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    goto :goto_2
.end method


# virtual methods
.method public delete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mIsActive:Z

    .line 86
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/trx/ServiceDbAdapter;->delete(Lcom/newspaperdirect/pressreader/android/core/Service;)V

    .line 87
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 89
    const/4 v2, 0x0

    sput-object v2, Lcom/newspaperdirect/pressreader/android/core/Service;->activeService:Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 90
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "active_service_name"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Service;->activeService:Lcom/newspaperdirect/pressreader/android/core/Service;

    if-ne v2, p0, :cond_0

    .line 95
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/Service;->services:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 96
    .local v1, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->setActive()V

    goto :goto_0
.end method

.method public getActivationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mActivationNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mApplicationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mClientName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mIsActive:Z

    return v0
.end method

.method public isExplicitlyActivated()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mActivationType:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->Explicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImplicitlyActivated()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mActivationType:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->Implicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActive()V
    .locals 3

    .prologue
    .line 70
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Service;->activeService:Lcom/newspaperdirect/pressreader/android/core/Service;

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Service;->activeService:Lcom/newspaperdirect/pressreader/android/core/Service;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/newspaperdirect/pressreader/android/core/Service;->mIsActive:Z

    .line 72
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mIsActive:Z

    .line 73
    sput-object p0, Lcom/newspaperdirect/pressreader/android/core/Service;->activeService:Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 74
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "active_service_name"

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/Service;->mName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method
