.class public Lorg/apache/harmony/security/fortress/Services;
.super Ljava/lang/Object;
.source "Services.java"


# static fields
.field private static needRefresh:Z

.field private static final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final providersNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field static refreshNumber:I

.field private static secureRandom:Ljava/security/Provider$Service;

.field private static final services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x14

    .line 49
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    .line 62
    const/4 v0, 0x1

    sput v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    .line 71
    new-instance v0, Lorg/apache/harmony/security/fortress/Services$1;

    invoke-direct {v0}, Lorg/apache/harmony/security/fortress/Services$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->loadProviders()V

    return-void
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 2
    .parameter "name"

    .prologue
    .line 128
    if-nez p0, :cond_4

    .line 129
    const/4 v0, 0x0

    .line 131
    .end local p0
    :goto_3
    return-object v0

    .restart local p0
    :cond_4
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/Provider;

    move-object v0, p0

    goto :goto_3
.end method

.method public static getProviders()[Ljava/security/Provider;
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/Provider;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Provider;

    return-object v0
.end method

.method public static getProvidersList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getSecureRandomService()Ljava/security/Provider$Service;
    .registers 1

    .prologue
    .line 232
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->secureRandom:Ljava/security/Provider$Service;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 2
    .parameter "key"

    .prologue
    .line 224
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/Provider$Service;

    return-object p0
.end method

.method public static initServiceInfo(Ljava/security/Provider;)V
    .registers 11
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    .line 173
    .local v5, serv:Ljava/security/Provider$Service;
    invoke-virtual {v5}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, type:Ljava/lang/String;
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->secureRandom:Ljava/security/Provider$Service;

    if-nez v7, :cond_2e

    const-string v7, "SecureRandom"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 175
    sput-object v5, Lorg/apache/harmony/security/fortress/Services;->secureRandom:Ljava/security/Provider$Service;

    .line 177
    :cond_2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, key:Ljava/lang/String;
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5c

    .line 181
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_5c
    sget-object v7, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v7, v5}, Lorg/apache/harmony/security/fortress/SecurityAccess;->getAliases(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_66
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_66

    .line 188
    sget-object v7, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    .line 192
    .end local v0           #alias:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #serv:Ljava/security/Provider$Service;
    .end local v6           #type:Ljava/lang/String;
    :cond_9d
    return-void
.end method

.method public static insertProviderAt(Ljava/security/Provider;I)I
    .registers 5
    .parameter "provider"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 142
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 143
    .local v0, size:I
    if-lt p1, v2, :cond_b

    if-le p1, v0, :cond_d

    .line 144
    :cond_b
    add-int/lit8 p1, v0, 0x1

    .line 146
    :cond_d
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 147
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 149
    return p1
.end method

.method public static isEmpty()Z
    .registers 1

    .prologue
    .line 213
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static loadProviders()V
    .registers 7

    .prologue
    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, providerClassName:Ljava/lang/String;
    const/4 v1, 0x1

    .line 83
    .local v1, i:I
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 87
    .local v0, cl:Ljava/lang/ClassLoader;
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "security.provider."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 89
    :try_start_21
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    .line 92
    .local v3, p:Ljava/security/Provider;
    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {v3}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_41} :catch_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_41} :catch_46
    .catch Ljava/lang/InstantiationException; {:try_start_21 .. :try_end_41} :catch_49

    move v1, v2

    .line 98
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_6

    .line 95
    .end local v1           #i:I
    .end local v3           #p:Ljava/security/Provider;
    .restart local v2       #i:I
    :catch_43
    move-exception v5

    move v1, v2

    .line 98
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_6

    .line 96
    .end local v1           #i:I
    .restart local v2       #i:I
    :catch_46
    move-exception v5

    move v1, v2

    .line 98
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_6

    .line 97
    .end local v1           #i:I
    .restart local v2       #i:I
    :catch_49
    move-exception v5

    move v1, v2

    .line 98
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_6

    .line 100
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_4c
    sget-object v5, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v5}, Lorg/apache/harmony/security/fortress/SecurityAccess;->renumProviders()V

    .line 101
    return-void
.end method

.method public static refresh()V
    .registers 1

    .prologue
    .line 248
    sget-boolean v0, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    if-eqz v0, :cond_d

    .line 249
    sget v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    .line 250
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->updateServiceInfo()V

    .line 252
    :cond_d
    return-void
.end method

.method public static removeProvider(I)V
    .registers 4
    .parameter "providerNumber"

    .prologue
    .line 158
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    const/4 v2, 0x1

    sub-int v2, p0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 159
    .local v0, p:Ljava/security/Provider;
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 161
    return-void
.end method

.method public static setNeedRefresh()V
    .registers 1

    .prologue
    .line 240
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    .line 241
    return-void
.end method

.method public static updateServiceInfo()V
    .registers 3

    .prologue
    .line 200
    sget-object v2, Lorg/apache/harmony/security/fortress/Services;->services:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 201
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/harmony/security/fortress/Services;->secureRandom:Ljava/security/Provider$Service;

    .line 202
    sget-object v2, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 203
    .local v1, p:Ljava/security/Provider;
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->initServiceInfo(Ljava/security/Provider;)V

    goto :goto_e

    .line 205
    .end local v1           #p:Ljava/security/Provider;
    :cond_1e
    const/4 v2, 0x0

    sput-boolean v2, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    .line 206
    return-void
.end method
