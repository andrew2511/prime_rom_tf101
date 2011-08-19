.class public Lcom/android/email/mail/Store$StoreInfo;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreInfo"
.end annotation


# instance fields
.field public mAccountInstanceLimit:I

.field public mClassName:Ljava/lang/String;

.field public mPushSupported:Z

.field public mScheme:Ljava/lang/String;

.field public mVisibleLimitDefault:I

.field public mVisibleLimitIncrement:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    return-void
.end method

.method public static getStoreInfo(ILjava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;
    .locals 8
    .parameter "resourceId"
    .parameter "scheme"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 122
    .local v1, xml:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, xmlEventType:I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    .line 123
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const-string v4, "store"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    const/4 v4, 0x0

    const-string v5, "scheme"

    invoke-interface {v1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, xmlScheme:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    new-instance v0, Lcom/android/email/mail/Store$StoreInfo;

    invoke-direct {v0}, Lcom/android/email/mail/Store$StoreInfo;-><init>()V

    .line 128
    .local v0, result:Lcom/android/email/mail/Store$StoreInfo;
    iput-object v3, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 129
    const/4 v4, 0x0

    const-string v5, "class"

    invoke-interface {v1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/email/mail/Store$StoreInfo;->mClassName:Ljava/lang/String;

    .line 130
    const/4 v4, 0x0

    const-string v5, "push"

    const/4 v6, 0x0

    invoke-interface {v1, v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    .line 132
    const/4 v4, 0x0

    const-string v5, "visibleLimitDefault"

    const/16 v6, 0x19

    invoke-interface {v1, v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    .line 134
    const/4 v4, 0x0

    const-string v5, "visibleLimitIncrement"

    const/16 v6, 0x19

    invoke-interface {v1, v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitIncrement:I

    .line 136
    const/4 v4, 0x0

    const-string v5, "accountInstanceLimit"

    const/4 v6, -0x1

    invoke-interface {v1, v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/android/email/mail/Store$StoreInfo;->mAccountInstanceLimit:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 147
    .end local v0           #result:Lcom/android/email/mail/Store$StoreInfo;
    .end local v1           #xml:Landroid/content/res/XmlResourceParser;
    .end local v2           #xmlEventType:I
    .end local v3           #xmlScheme:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 144
    :catch_0
    move-exception v4

    :cond_1
    :goto_1
    move-object v4, v7

    .line 147
    goto :goto_0

    .line 142
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;
    .locals 2
    .parameter "scheme"
    .parameter "context"

    .prologue
    .line 110
    const v1, 0x7f06000c

    invoke-static {v1, p0, p1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(ILjava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v0

    .line 111
    .local v0, result:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v0, :cond_0

    .line 112
    const v1, 0x7f06000b

    invoke-static {v1, p0, p1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(ILjava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v0

    .line 114
    :cond_0
    return-object v0
.end method
