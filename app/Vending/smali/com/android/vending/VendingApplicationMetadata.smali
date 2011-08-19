.class public Lcom/android/vending/VendingApplicationMetadata;
.super Ljava/lang/Object;
.source "VendingApplicationMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;
    }
.end annotation


# instance fields
.field protected mBillingEventsEnabled:Z

.field protected mCommentPostEnabled:Z

.field protected mInAppBillingMap:Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;

.field protected mPaidAppsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->PAID_APPS_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mPaidAppsEnabled:Z

    .line 47
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->COMMENT_POST_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mCommentPostEnabled:Z

    .line 48
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->BILLING_EVENTS_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mBillingEventsEnabled:Z

    .line 49
    new-instance v0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;

    invoke-direct {v0, p0}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;-><init>(Lcom/android/vending/VendingApplicationMetadata;)V

    iput-object v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mInAppBillingMap:Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;

    .line 50
    invoke-virtual {p0}, Lcom/android/vending/VendingApplicationMetadata;->populateInAppBillingMap()V

    .line 51
    return-void
.end method


# virtual methods
.method public getBillingEventsEnabled()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mBillingEventsEnabled:Z

    return v0
.end method

.method public getCommentPostEnabled()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mCommentPostEnabled:Z

    return v0
.end method

.method public getInAppBillingEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mInAppBillingMap:Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;

    invoke-virtual {v0, p1}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPaidAppsEnabled()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mPaidAppsEnabled:Z

    return v0
.end method

.method public persist()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->PAID_APPS_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {p0}, Lcom/android/vending/VendingApplicationMetadata;->getPaidAppsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->COMMENT_POST_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {p0}, Lcom/android/vending/VendingApplicationMetadata;->getCommentPostEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->BILLING_EVENTS_ENABLED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {p0}, Lcom/android/vending/VendingApplicationMetadata;->getBillingEventsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/vending/VendingApplicationMetadata;->persistInAppBillingMap()V

    .line 62
    return-void
.end method

.method public persistInAppBillingMap()V
    .locals 11

    .prologue
    .line 89
    :try_start_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v7, prefStringBuffer:Ljava/lang/StringBuffer;
    iget-object v9, p0, Lcom/android/vending/VendingApplicationMetadata;->mInAppBillingMap:Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;

    invoke-virtual {v9}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->getMapClone()Ljava/util/Map;

    move-result-object v6

    .line 91
    .local v6, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 93
    .local v4, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 94
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;

    invoke-virtual {v9}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;->isSet()Z

    move-result v8

    .line 95
    .local v8, set:Z
    if-eqz v8, :cond_0

    .line 96
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, account:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;

    invoke-virtual {v9}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;->isEnabled()Z

    move-result v2

    .line 98
    .local v2, enabled:Z
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 101
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #enabled:Z
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;>;"
    .end local v4           #entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;>;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;>;"
    .end local v7           #prefStringBuffer:Ljava/lang/StringBuffer;
    .end local v8           #set:Z
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 108
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "Caught exception while encoding / persisting IAB map."

    invoke-static {v9}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 109
    iget-object v9, p0, Lcom/android/vending/VendingApplicationMetadata;->mInAppBillingMap:Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;

    invoke-static {v9}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->access$000(Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;)V

    .line 110
    sget-object v9, Lcom/android/vending/util/VendingPreferences;->IN_APP_BILLING_PAIRS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 112
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 105
    .restart local v4       #entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;>;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;>;"
    .restart local v7       #prefStringBuffer:Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    sget-object v9, Lcom/android/vending/util/VendingPreferences;->IN_APP_BILLING_PAIRS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public populateInAppBillingMap()V
    .locals 8

    .prologue
    .line 65
    sget-object v5, Lcom/android/vending/util/VendingPreferences;->IN_APP_BILLING_PAIRS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    sget-object v5, Lcom/android/vending/util/VendingPreferences;->IN_APP_BILLING_PAIRS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 70
    .local v3, prefString:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 72
    :try_start_0
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, splitValues:[Ljava/lang/String;
    array-length v5, v4

    div-int/lit8 v2, v5, 0x2

    .line 74
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 75
    iget-object v5, p0, Lcom/android/vending/VendingApplicationMetadata;->mInAppBillingMap:Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;

    mul-int/lit8 v6, v1, 0x2

    aget-object v6, v4, v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->setEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v4           #splitValues:[Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 80
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Caught exception while fetching / populating IAB enabled states"

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 81
    iget-object v5, p0, Lcom/android/vending/VendingApplicationMetadata;->mInAppBillingMap:Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;

    invoke-static {v5}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->access$000(Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;)V

    .line 82
    sget-object v5, Lcom/android/vending/util/VendingPreferences;->IN_APP_BILLING_PAIRS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateState(Lcom/android/vending/model/GetMarketMetadataResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/android/vending/model/GetMarketMetadataResponse;->getPaidAppsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mPaidAppsEnabled:Z

    .line 116
    invoke-virtual {p1}, Lcom/android/vending/model/GetMarketMetadataResponse;->getCommentPostEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mCommentPostEnabled:Z

    .line 117
    invoke-virtual {p1}, Lcom/android/vending/model/GetMarketMetadataResponse;->getBillingEventsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mBillingEventsEnabled:Z

    .line 118
    iget-object v0, p0, Lcom/android/vending/VendingApplicationMetadata;->mInAppBillingMap:Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;

    invoke-virtual {p1}, Lcom/android/vending/model/GetMarketMetadataResponse;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/vending/model/GetMarketMetadataResponse;->getInAppBillingEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;->setEnabled(Ljava/lang/String;Z)V

    .line 120
    invoke-virtual {p0}, Lcom/android/vending/VendingApplicationMetadata;->persist()V

    .line 121
    return-void
.end method
