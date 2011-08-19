.class public Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;
.super Ljava/lang/Object;
.source "EncryptedSubscriberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/EncryptedSubscriberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCarrierKeyVersion:I

.field private mEncryptedKey:Ljava/lang/String;

.field private mGoogleKeyVersion:I

.field private mInitVector:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mEncryptedKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mInitVector:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mGoogleKeyVersion:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mCarrierKeyVersion:I

    return v0
.end method


# virtual methods
.method public build()Lcom/android/vending/model/EncryptedSubscriberInfo;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Lcom/android/vending/model/EncryptedSubscriberInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo;-><init>(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;Lcom/android/vending/model/EncryptedSubscriberInfo$1;)V

    return-object v0
.end method

.method public setCarrierKeyVersion(I)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "carrierKeyVersion"

    .prologue
    .line 184
    iput p1, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mCarrierKeyVersion:I

    .line 185
    return-object p0
.end method

.method public setEncryptedKey(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "encryptedKey"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mEncryptedKey:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public setGoogleKeyVersion(I)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "googleKeyVersion"

    .prologue
    .line 179
    iput p1, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mGoogleKeyVersion:I

    .line 180
    return-object p0
.end method

.method public setInitVector(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "initVector"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mInitVector:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "message"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mMessage:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;
    .locals 0
    .parameter "signature"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->mSignature:Ljava/lang/String;

    .line 170
    return-object p0
.end method
