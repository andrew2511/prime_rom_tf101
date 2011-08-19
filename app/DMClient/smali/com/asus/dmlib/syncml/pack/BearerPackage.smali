.class public Lcom/asus/dmlib/syncml/pack/BearerPackage;
.super Ljava/lang/Object;
.source "BearerPackage.java"


# static fields
.field public static final DEFAULT_HMAC_ALGORITHM:Ljava/lang/String; = "MD5"

.field public static final HMAC_FIELD:Ljava/lang/String; = "x-syncml-hmac"

.field public static final HMAC_FIELD_PARAMETER_ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final HMAC_FIELD_PARAMETER_MAC:Ljava/lang/String; = "mac"

.field public static final HMAC_FIELD_PARAMETER_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field private isHmacInUse:Z

.field private mBody:[B

.field private mHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 2
    .parameter
    .parameter "syncml"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/asus/dmlib/syncml/message/container/SyncML;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, header:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p2, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new BearerPackage with null as syncml."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    if-nez p1, :cond_1

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mHeader:Ljava/util/HashMap;

    .line 48
    :goto_0
    iput-object p2, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 49
    return-void

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mHeader:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/HashMap;[B)V
    .locals 2
    .parameter
    .parameter "body"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 20
    .local p1, header:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p2, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a new BearerPackage with null as body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    if-nez p1, :cond_1

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mHeader:Ljava/util/HashMap;

    .line 32
    :goto_0
    iput-object p2, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mBody:[B

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->isHmacInUse:Z

    .line 34
    return-void

    .line 29
    :cond_1
    iput-object p1, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mHeader:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public addHeaderAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a header attribute with name null to BearerPackage."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mHeader:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->isHmacInUse:Z

    .line 60
    return-void
.end method

.method public getBody()[B
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mBody:[B

    return-object v0
.end method

.method public getHeader()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mHeader:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHeaderAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mHeader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    return-object v0
.end method

.method public isHmacInUse()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->isHmacInUse:Z

    return v0
.end method

.method public setBody([B)V
    .locals 2
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set the BearerPackage body to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mBody:[B

    .line 85
    return-void
.end method

.method public setHeader(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    .local p1, header:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null header."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mHeader:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method public setHmacInUse(Z)V
    .locals 0
    .parameter "hmacInUse"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->isHmacInUse:Z

    .line 97
    return-void
.end method

.method public setSyncML(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 0
    .parameter "syncML"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/asus/dmlib/syncml/pack/BearerPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 105
    return-void
.end method
