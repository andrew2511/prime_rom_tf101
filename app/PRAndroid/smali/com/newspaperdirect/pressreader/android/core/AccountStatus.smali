.class public Lcom/newspaperdirect/pressreader/android/core/AccountStatus;
.super Ljava/lang/Object;
.source "AccountStatus.java"


# instance fields
.field private mAdditionalNewspaperPrice:F

.field private mAdditionalNewspaperPriceCurrency:Ljava/lang/String;

.field private mAdditionalNewspaperPriceFormatted:Ljava/lang/String;

.field private mIsTrial:Z

.field private mRemainingFreeCredits:I

.field private mShowRemainingFreeCredits:Z

.field private mSubscriptionPlan:Ljava/lang/String;

.field private mSubscriptionStatus:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mSubscriptionPlan:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mSubscriptionStatus:I

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mRemainingFreeCredits:I

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mAdditionalNewspaperPrice:F

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mAdditionalNewspaperPriceFormatted:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mAdditionalNewspaperPriceCurrency:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mShowRemainingFreeCredits:Z

    return-void
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mIsTrial:Z

    return-void
.end method

.method public static get()Lcom/newspaperdirect/pressreader/android/core/AccountStatus;
    .locals 5

    .prologue
    .line 53
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    invoke-direct {v2}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;-><init>()V

    .line 54
    .local v2, result:Lcom/newspaperdirect/pressreader/android/core/AccountStatus;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v3, "get-account-status"

    invoke-direct {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v3

    const-string v4, "account-status"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 56
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;

    invoke-direct {v4, v2}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;)V

    invoke-virtual {v3, v4}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 88
    :try_start_0
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 92
    :goto_0
    return-object v3

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public IsTrial()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mIsTrial:Z

    return v0
.end method

.method public getAdditionalNewspaperPrice()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mAdditionalNewspaperPrice:F

    return v0
.end method

.method public getAdditionalNewspaperPriceCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mAdditionalNewspaperPriceCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalNewspaperPriceFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mAdditionalNewspaperPriceFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainigCredits()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mRemainingFreeCredits:I

    return v0
.end method

.method public getShowRemainingFreeCredits()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mShowRemainingFreeCredits:Z

    return v0
.end method

.method public getSubscriptionPlan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mSubscriptionPlan:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionStatus()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->mSubscriptionStatus:I

    return v0
.end method
