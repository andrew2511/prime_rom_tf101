.class public final Lcom/google/android/youtube/core/model/UserAuth;
.super Ljava/lang/Object;
.source "UserAuth.java"


# instance fields
.field public final account:Ljava/lang/String;

.field public final authToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "authToken"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    .line 24
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->authToken:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 29
    if-ne p0, p1, :cond_0

    .line 30
    const/4 v2, 0x1

    .line 36
    :goto_0
    return v2

    .line 32
    :cond_0
    instance-of v2, p1, Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_1

    .line 33
    const/4 v2, 0x0

    goto :goto_0

    .line 35
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth;

    move-object v1, v0

    .line 36
    .local v1, other:Lcom/google/android/youtube/core/model/UserAuth;
    iget-object v2, p0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountName=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
