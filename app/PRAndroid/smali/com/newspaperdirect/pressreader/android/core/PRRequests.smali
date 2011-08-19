.class public Lcom/newspaperdirect/pressreader/android/core/PRRequests;
.super Ljava/lang/Object;
.source "PRRequests.java"


# static fields
.field private static mThumbnailUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->mThumbnailUrls:Ljava/util/List;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->mThumbnailUrls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    sput-object p0, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->mThumbnailUrls:Ljava/util/List;

    return-void
.end method

.method public static deleteMessages(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    .local p0, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 155
    .end local p0           #ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local p0       #ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v2, request:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0           #ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 154
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v4, "delete-messages"

    invoke-direct {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V

    goto :goto_0

    .line 151
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 152
    .local v0, id:J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<message id=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getAuthTicket()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 24
    :try_start_0
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v2}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>()V

    .line 25
    .local v2, result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 26
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v3, "get-auth-ticket"

    invoke-direct {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v3

    const-string v4, "auth-ticket"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 28
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/PRRequests$1;

    invoke-direct {v4, v2}, Lcom/newspaperdirect/pressreader/android/core/PRRequests$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v4}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 33
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V

    .line 34
    iget-object v0, v2, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 37
    .end local v1           #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .end local v2           #result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 36
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v5

    .line 37
    goto :goto_0
.end method

.method public static getIssueDates(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<CID>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</CID>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, request:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, calendar:Ljava/util/Calendar;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 70
    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<start-date>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MM/dd/yyyy"

    invoke-static {v7, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</start-date>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<end-date>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MM/dd/yyyy"

    invoke-static {v7, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</end-date>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, format:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/util/Date;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 77
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v6, "get-issue-dates"

    invoke-direct {v3, v6}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 79
    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v6

    const-string v7, "date"

    invoke-virtual {v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    new-instance v7, Lcom/newspaperdirect/pressreader/android/core/PRRequests$3;

    invoke-direct {v7, v5, v2}, Lcom/newspaperdirect/pressreader/android/core/PRRequests$3;-><init>(Ljava/util/List;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v6, v7}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 86
    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    .line 91
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    .end local v3           #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .end local v4           #request:Ljava/lang/String;
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<Ljava/util/Date;>;"
    :goto_0
    return-object v6

    .line 89
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 90
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getThumbnailUrls()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 42
    const-class v2, Lcom/newspaperdirect/pressreader/android/core/PRRequests;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->mThumbnailUrls:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->mThumbnailUrls:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_0
    monitor-exit v2

    return-object v3

    .line 44
    :cond_0
    :try_start_1
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v3, "get-thumbnail-urls"

    invoke-direct {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v3

    const-string v4, "thumbnailUrls"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    const-string v4, "thumbnailUrl"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 46
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/PRRequests$2;

    invoke-direct {v4}, Lcom/newspaperdirect/pressreader/android/core/PRRequests$2;-><init>()V

    invoke-virtual {v3, v4}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 52
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V

    .line 53
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->mThumbnailUrls:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 55
    .end local v1           #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 56
    .local v0, e:Ljava/lang/AssertionError;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/AssertionError;->printStackTrace()V

    move-object v3, v5

    .line 57
    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/lang/AssertionError;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v5

    .line 61
    goto :goto_0

    .line 42
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static requestConfirmedBackIssue(Ljava/lang/String;Ljava/util/Date;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)Z
    .locals 7
    .parameter "cid"
    .parameter "date"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/newspaperdirect/pressreader/android/core/NDWrapper",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    .local p2, message:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<CID>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</CID>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 123
    const-string v6, "<issueDate>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "yyyy-MM-dd"

    invoke-static {v6, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</issueDate>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 124
    const-string v6, "<enable-purchase-confirmed>1</enable-purchase-confirmed>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, request:Ljava/lang/String;
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 126
    .local v4, result:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v6, "get-issues"

    invoke-direct {v5, v6}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v5, v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    move-result-object v2

    .line 128
    .local v2, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v5

    const-string v6, "issue"

    invoke-virtual {v5, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/PRRequests$5;

    invoke-direct {v6, v4, p2}, Lcom/newspaperdirect/pressreader/android/core/PRRequests$5;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 137
    :try_start_0
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_0
    iget-object p0, v4, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 139
    .restart local p0
    :catch_0
    move-exception v0

    .line 140
    .local v0, ae:Ljava/lang/AssertionError;
    invoke-virtual {v0}, Ljava/lang/AssertionError;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0           #ae:Ljava/lang/AssertionError;
    :catch_1
    move-exception v1

    .line 143
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestIssue(Ljava/lang/String;Ljava/util/Date;)Ljava/util/HashMap;
    .locals 1
    .parameter "cid"
    .parameter "date"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->requestIssue(Ljava/lang/String;Ljava/util/Date;Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static requestIssue(Ljava/lang/String;Ljava/util/Date;Z)Ljava/util/HashMap;
    .locals 5
    .parameter "cid"
    .parameter "date"
    .parameter "includeSupplement"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<CID>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</CID>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 100
    const-string v4, "<issueDate>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yyyy-MM-dd"

    invoke-static {v4, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</issueDate>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    if-eqz p2, :cond_0

    const-string v4, "<include-supplements>1</include-supplements>"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, request:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v2, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 104
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v3, "get-issues"

    invoke-direct {v0, v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 106
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v3

    const-string v4, "issue"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/PRRequests$4;

    invoke-direct {v4, v2}, Lcom/newspaperdirect/pressreader/android/core/PRRequests$4;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v3, v4}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 113
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V

    .line 114
    return-object v2

    .line 101
    .end local v0           #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .end local v1           #request:Ljava/lang/String;
    .end local v2           #result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method
