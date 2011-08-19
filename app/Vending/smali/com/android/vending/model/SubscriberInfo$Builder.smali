.class public Lcom/android/vending/model/SubscriberInfo$Builder;
.super Ljava/lang/Object;
.source "SubscriberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/SubscriberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAddress1:Ljava/lang/String;

.field private mAddress2:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mIdentifier:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mAddress1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mAddress2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/vending/model/SubscriberInfo;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/android/vending/model/SubscriberInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vending/model/SubscriberInfo;-><init>(Lcom/android/vending/model/SubscriberInfo$Builder;Lcom/android/vending/model/SubscriberInfo$1;)V

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "address1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mAddress1:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setAddress2(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "address2"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mAddress2:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "city"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mCity:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "countryCode"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mCountryCode:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "identifier"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mIdentifier:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "name"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mName:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "postalCode"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mPostalCode:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/android/vending/model/SubscriberInfo$Builder;
    .locals 0
    .parameter "state"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/vending/model/SubscriberInfo$Builder;->mState:Ljava/lang/String;

    .line 183
    return-object p0
.end method
