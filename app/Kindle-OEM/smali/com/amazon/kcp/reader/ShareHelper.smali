.class public Lcom/amazon/kcp/reader/ShareHelper;
.super Ljava/lang/Object;
.source "ShareHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shareCurrentProgressInBook(Landroid/content/Context;Lcom/amazon/kcp/reader/models/IBookDocument;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 24
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAuthor()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPageFirstPosition(I)I

    move-result v2

    .line 28
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLastPosition()I

    move-result v3

    .line 29
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    .line 30
    if-le v2, v8, :cond_0

    const/high16 v5, 0x3f80

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getStartReadingPosition()I

    move-result v5

    if-lt v5, v2, :cond_2

    :cond_0
    move v2, v8

    .line 31
    :goto_0
    const/high16 v5, 0x42c6

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPageLastPosition(I)I

    move-result v5

    if-lt v5, v3, :cond_3

    :cond_1
    move v3, v8

    .line 36
    :goto_1
    const v5, 0x7f0b0162

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 40
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 42
    if-eqz v2, :cond_4

    .line 44
    const v2, 0x7f0b00c2

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    aput-object v5, v3, v9

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 106
    :goto_2
    const v2, 0x7f0b00c1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "ShareHelper"

    const-string v5, "ShareProgress"

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-static {v3, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void

    :cond_2
    move v2, v7

    .line 30
    goto :goto_0

    :cond_3
    move v3, v7

    .line 31
    goto :goto_1

    .line 46
    :cond_4
    if-eqz v3, :cond_5

    .line 48
    const v2, 0x7f0b00c6

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    aput-object v5, v3, v9

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_2

    .line 52
    :cond_5
    const v2, 0x7f0b00ca

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    aput-object v5, v3, v10

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_2

    .line 57
    :cond_6
    if-eqz v2, :cond_7

    .line 59
    const v1, 0x7f0b00c3

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v7

    aput-object v5, v2, v8

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_2

    .line 61
    :cond_7
    if-eqz v3, :cond_8

    .line 63
    const v1, 0x7f0b00c7

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v7

    aput-object v5, v2, v8

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    .line 67
    :cond_8
    const v1, 0x7f0b00cb

    new-array v2, v10, [Ljava/lang/Object;

    float-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    aput-object v5, v2, v9

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    .line 73
    :cond_9
    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 76
    if-eqz v2, :cond_a

    .line 78
    const v2, 0x7f0b00c4

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v7

    aput-object v5, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    .line 80
    :cond_a
    if-eqz v3, :cond_b

    .line 82
    const v2, 0x7f0b00c8

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v7

    aput-object v5, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    .line 86
    :cond_b
    const v2, 0x7f0b00cc

    new-array v3, v10, [Ljava/lang/Object;

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v1, v3, v8

    aput-object v5, v3, v9

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    .line 91
    :cond_c
    if-eqz v2, :cond_d

    .line 93
    const v1, 0x7f0b00c5

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v5, v2, v7

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    .line 95
    :cond_d
    if-eqz v3, :cond_e

    .line 97
    const v1, 0x7f0b00c9

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v5, v2, v7

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    .line 101
    :cond_e
    const v1, 0x7f0b00cd

    new-array v2, v9, [Ljava/lang/Object;

    float-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v5, v2, v8

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2
.end method
