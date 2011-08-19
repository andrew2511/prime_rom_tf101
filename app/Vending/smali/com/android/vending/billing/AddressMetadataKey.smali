.class public Lcom/android/vending/billing/AddressMetadataKey;
.super Ljava/lang/Object;
.source "AddressMetadataKey.java"

# interfaces
.implements Lcom/android/vending/cache/Cacheable;


# instance fields
.field private mHighPriority:Z

.field private mMetadata:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "metadata"
    .parameter "highPriority"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/vending/billing/AddressMetadataKey;->mMetadata:Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/android/vending/billing/AddressMetadataKey;->mHighPriority:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I18N_ADDRESS_METADATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/AddressMetadataKey;->mMetadata:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/vending/billing/AddressMetadataKey;->mHighPriority:Z

    return v0
.end method

.method public storeInMemory()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
