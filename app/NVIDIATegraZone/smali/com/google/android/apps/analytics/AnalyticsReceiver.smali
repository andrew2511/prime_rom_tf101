.class public Lcom/google/android/apps/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsReceiver.java"


# static fields
.field private static final INSTALL_ACTION:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static formatReferrer(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "referrer"

    .prologue
    .line 54
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 55
    .local p0, params:[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v3, paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v1, p0

    .local v1, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 58
    .local v2, param:Ljava/lang/String;
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, parts:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 66
    .end local v2           #parts:[Ljava/lang/String;
    :cond_0
    const-string p0, "utm_campaign"

    .end local p0           #arr$:[Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    .line 67
    .local p0, hasCampaign:Z
    :goto_1
    const-string v0, "utm_medium"

    .end local v0           #i$:I
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 68
    .local v0, hasMedium:Z
    :goto_2
    const-string v1, "utm_source"

    .end local v1           #len$:I
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 70
    .local v1, hasSource:Z
    :goto_3
    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    if-nez v1, :cond_6

    .line 71
    :cond_1
    const-string p0, "googleanalytics"

    .end local p0           #hasCampaign:Z
    const-string v0, "Badly formatted referrer missing campaign, name or source"

    .end local v0           #hasMedium:Z
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 p0, 0x0

    .line 106
    .end local v1           #hasSource:Z
    .end local v3           #paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    return-object p0

    .line 62
    .local v0, i$:I
    .local v1, len$:I
    .restart local v2       #parts:[Ljava/lang/String;
    .restart local v3       #paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p0, arr$:[Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    .end local v2           #parts:[Ljava/lang/String;
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local p0           #arr$:[Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    .line 67
    .end local v0           #i$:I
    .local p0, hasCampaign:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 68
    .end local v1           #len$:I
    .local v0, hasMedium:Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 78
    .local v1, hasSource:Z
    :cond_6
    const/4 p0, 0x7

    new-array v2, p0, [[Ljava/lang/String;

    .end local p0           #hasCampaign:Z
    const/4 v0, 0x0

    const/4 p0, 0x2

    new-array v1, p0, [Ljava/lang/String;

    .end local v0           #hasMedium:Z
    .end local v1           #hasSource:Z
    const/4 p0, 0x0

    const-string v4, "utmcid"

    aput-object v4, v1, p0

    const/4 v4, 0x1

    const-string p0, "utm_id"

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const/4 p0, 0x2

    new-array v1, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string v4, "utmcsr"

    aput-object v4, v1, p0

    const/4 v4, 0x1

    const-string p0, "utm_source"

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const/4 p0, 0x2

    new-array v1, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string v4, "utmgclid"

    aput-object v4, v1, p0

    const/4 v4, 0x1

    const-string p0, "gclid"

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const/4 p0, 0x2

    new-array v1, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string v4, "utmccn"

    aput-object v4, v1, p0

    const/4 v4, 0x1

    const-string p0, "utm_campaign"

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const/4 p0, 0x2

    new-array v1, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string v4, "utmcmd"

    aput-object v4, v1, p0

    const/4 v4, 0x1

    const-string p0, "utm_medium"

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const/4 p0, 0x2

    new-array v1, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string v4, "utmctr"

    aput-object v4, v1, p0

    const/4 v4, 0x1

    const-string p0, "utm_term"

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const/4 p0, 0x2

    new-array v1, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string v4, "utmcct"

    aput-object v4, v1, p0

    const/4 v4, 0x1

    const-string p0, "utm_content"

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v1, v4

    aput-object v1, v2, v0

    .line 88
    .local v2, keyValues:[[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, formattedReferrer:Ljava/lang/StringBuilder;
    const/4 p0, 0x1

    .line 94
    .local p0, firstIn:Z
    const/4 v1, 0x0

    .end local v3           #paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, i:I
    :goto_5
    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 95
    aget-object v3, v2, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_7

    .line 96
    aget-object v3, v2, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "+"

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, value:Ljava/lang/String;
    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 98
    if-eqz p0, :cond_8

    .line 99
    const/4 p0, 0x0

    .line 103
    :goto_6
    aget-object v4, v2, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .end local v3           #value:Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 101
    .restart local v3       #value:Ljava/lang/String;
    :cond_8
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 106
    .end local v3           #value:Ljava/lang/String;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 24
    const-string v3, "referrer"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, referrer:Ljava/lang/String;
    const-string v3, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-static {v1}, Lcom/google/android/apps/analytics/AnalyticsReceiver;->formatReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, formattedReferrer:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 34
    new-instance v2, Lcom/google/android/apps/analytics/PersistentEventStore;

    invoke-direct {v2, p1}, Lcom/google/android/apps/analytics/PersistentEventStore;-><init>(Landroid/content/Context;)V

    .line 35
    .local v2, store:Lcom/google/android/apps/analytics/PersistentEventStore;
    invoke-virtual {v2, v0}, Lcom/google/android/apps/analytics/PersistentEventStore;->setReferrer(Ljava/lang/String;)V

    .line 36
    const-string v3, "googleanalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stored referrer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    .end local v2           #store:Lcom/google/android/apps/analytics/PersistentEventStore;
    :cond_2
    const-string v3, "googleanalytics"

    const-string v4, "Badly formatted referrer, ignored"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
