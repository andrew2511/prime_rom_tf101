.class public Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;
.super Ljava/lang/Object;
.source "PublicIntentDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/PublicIntentDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XmppUri"
.end annotation


# instance fields
.field private mAction:I

.field private mFromAddress:Ljava/lang/String;

.field private mMessageBody:Ljava/lang/String;

.field private mToAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getXmppQueryParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "rawParams"
    .parameter "key"

    .prologue
    const/4 v7, 0x1

    .line 595
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 596
    const-string v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 597
    .local v4, paramSet:Ljava/lang/String;
    const-string v5, "="

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, keyValue:[Ljava/lang/String;
    array-length v5, v2

    if-le v5, v7, :cond_0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 599
    aget-object v5, v2, v7

    .line 603
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #keyValue:[Ljava/lang/String;
    .end local v3           #len$:I
    .end local v4           #paramSet:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 596
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #keyValue:[Ljava/lang/String;
    .restart local v3       #len$:I
    .restart local v4       #paramSet:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #keyValue:[Ljava/lang/String;
    .end local v3           #len$:I
    .end local v4           #paramSet:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static internalParse(Landroid/net/Uri;)Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;
    .locals 14
    .parameter "uri"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 546
    new-instance v10, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;

    invoke-direct {v10}, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;-><init>()V

    .line 549
    .local v10, x:Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, authority:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/PublicIntentDispatcher;->isValidAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v1

    :goto_0
    iput-object v11, v10, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->mFromAddress:Ljava/lang/String;

    .line 553
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    .line 554
    .local v6, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 555
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 556
    .local v3, firstSemgment:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/PublicIntentDispatcher;->isValidAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v3

    :goto_1
    iput-object v11, v10, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->mToAddress:Ljava/lang/String;

    .line 560
    .end local v3           #firstSemgment:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v9

    .line 561
    .local v9, rawQueryString:Ljava/lang/String;
    move-object v8, v9

    .line 562
    .local v8, queryType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 563
    .local v7, queryParametersString:Ljava/lang/String;
    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 564
    .local v4, firstSemiColonIndex:I
    if-ltz v4, :cond_1

    .line 565
    invoke-virtual {v9, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 566
    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 569
    :cond_1
    const/4 v0, -0x1

    .line 570
    .local v0, action:I
    const/4 v5, 0x0

    .line 571
    .local v5, messageBody:Ljava/lang/String;
    const-string v11, "call"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 572
    const/4 v0, 0x3

    .line 573
    if-eqz v7, :cond_2

    .line 574
    const-string v11, "type"

    invoke-static {v7, v11}, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->getXmppQueryParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, callType:Ljava/lang/String;
    const-string v11, "voice"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 576
    const/4 v0, 0x2

    .line 588
    .end local v2           #callType:Ljava/lang/String;
    :cond_2
    :goto_2
    iput v0, v10, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->mAction:I

    .line 589
    iput-object v5, v10, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->mMessageBody:Ljava/lang/String;

    .line 591
    return-object v10

    .end local v0           #action:I
    .end local v4           #firstSemiColonIndex:I
    .end local v5           #messageBody:Ljava/lang/String;
    .end local v6           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #queryParametersString:Ljava/lang/String;
    .end local v8           #queryType:Ljava/lang/String;
    .end local v9           #rawQueryString:Ljava/lang/String;
    :cond_3
    move-object v11, v13

    .line 550
    goto :goto_0

    .restart local v3       #firstSemgment:Ljava/lang/String;
    .restart local v6       #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object v11, v13

    .line 556
    goto :goto_1

    .line 577
    .end local v3           #firstSemgment:Ljava/lang/String;
    .restart local v0       #action:I
    .restart local v2       #callType:Ljava/lang/String;
    .restart local v4       #firstSemiColonIndex:I
    .restart local v5       #messageBody:Ljava/lang/String;
    .restart local v7       #queryParametersString:Ljava/lang/String;
    .restart local v8       #queryType:Ljava/lang/String;
    .restart local v9       #rawQueryString:Ljava/lang/String;
    :cond_5
    const-string v11, "video"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 578
    const/4 v0, 0x1

    goto :goto_2

    .line 581
    .end local v2           #callType:Ljava/lang/String;
    :cond_6
    const-string v11, "message"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 582
    const/4 v0, 0x0

    .line 583
    const-string v11, "body"

    invoke-static {v7, v11}, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->getXmppQueryParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 585
    :cond_7
    const-string v11, "talk"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseIntent: xmpp query type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not supported"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static needsConfirmation(I)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 537
    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v1

    .line 542
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Landroid/net/Uri;)Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;
    .locals 2
    .parameter "uri"

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    const/4 v0, 0x0

    .line 517
    :goto_0
    return-object v0

    .line 510
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 517
    :cond_1
    invoke-static {p0}, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->internalParse(Landroid/net/Uri;)Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->mAction:I

    return v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->mFromAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$XmppUri;->mToAddress:Ljava/lang/String;

    return-object v0
.end method
