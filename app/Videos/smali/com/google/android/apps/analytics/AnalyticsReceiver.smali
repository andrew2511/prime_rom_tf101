.class public Lcom/google/android/apps/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final INSTALL_ACTION:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static formatReferrer(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "="

    const-string v9, "%20"

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, v0

    move v3, v7

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    const-string v5, "="

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-eq v5, v6, :cond_2

    :cond_0
    const-string v0, "utm_campaign"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v8

    :goto_1
    const-string v2, "utm_medium"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v8

    :goto_2
    const-string v3, "utm_source"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    move v3, v8

    :goto_3
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_6

    :cond_1
    const-string v0, "googleanalytics"

    const-string v1, "Badly formatted referrer missing campaign, name or source"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_2
    aget-object v5, v4, v7

    aget-object v4, v4, v8

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_1

    :cond_4
    move v2, v7

    goto :goto_2

    :cond_5
    move v3, v7

    goto :goto_3

    :cond_6
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "utmcid"

    aput-object v3, v2, v7

    const-string v3, "utm_id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v8

    aput-object v2, v0, v7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "utmcsr"

    aput-object v3, v2, v7

    const-string v3, "utm_source"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v8

    aput-object v2, v0, v8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "utmgclid"

    aput-object v3, v2, v7

    const-string v3, "gclid"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v8

    aput-object v2, v0, v6

    const/4 v2, 0x3

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "utmccn"

    aput-object v4, v3, v7

    const-string v4, "utm_campaign"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v3, v8

    aput-object v3, v0, v2

    const/4 v2, 0x4

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "utmcmd"

    aput-object v4, v3, v7

    const-string v4, "utm_medium"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v3, v8

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "utmctr"

    aput-object v4, v3, v7

    const-string v4, "utm_term"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v3, v8

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "utmcct"

    aput-object v4, v3, v7

    const-string v4, "utm_content"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v3, v8

    aput-object v3, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v7

    move v3, v8

    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_9

    aget-object v4, v0, v2

    aget-object v4, v4, v8

    if-eqz v4, :cond_7

    aget-object v4, v0, v2

    aget-object v4, v4, v8

    const-string v5, "+"

    const-string v6, "%20"

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_8

    move v3, v7

    :goto_6
    aget-object v5, v0, v2

    aget-object v5, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v3, "googleanalytics"

    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/google/android/apps/analytics/AnalyticsReceiver;->formatReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/apps/analytics/PersistentEventStore;

    new-instance v2, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-direct {v2, p1}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/google/android/apps/analytics/PersistentEventStore;-><init>(Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;)V

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/PersistentEventStore;->setReferrer(Ljava/lang/String;)V

    const-string v1, "googleanalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored referrer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "googleanalytics"

    const-string v0, "Badly formatted referrer, ignored"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
