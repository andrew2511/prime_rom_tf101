.class public Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;
.super Ljava/lang/Object;
.source "AccountSecretProvider.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IAccountSecretProvider;


# static fields
.field private static final SERIALIZATION_SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field private secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

.field private storageKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/ISecureStorage;Ljava/lang/String;)V
    .locals 1
    .parameter "secureStorage"
    .parameter "storageKey"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    .line 27
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->storageKey:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    .line 36
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->storageKey:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private deserializeSecrets(Ljava/lang/String;)Ljava/util/Vector;
    .locals 5
    .parameter "serializedSecrets"

    .prologue
    const/4 v4, -0x1

    .line 121
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 122
    .local v1, secrets:Ljava/util/Vector;
    const/4 v2, 0x0

    .line 123
    .local v2, start:I
    const/4 v0, 0x0

    .line 124
    .local v0, end:I
    :goto_0
    if-eq v0, v4, :cond_1

    .line 126
    const-string v3, ","

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 127
    if-ne v0, v4, :cond_0

    .line 129
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 134
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return-object v1
.end method

.method private serializeSecrets(Ljava/util/Vector;)Ljava/lang/String;
    .locals 4
    .parameter "secrets"

    .prologue
    .line 107
    const-string v1, ""

    .line 108
    .local v1, serializedSecrets:Ljava/lang/String;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 113
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return-object v1
.end method


# virtual methods
.method public appendAccountSecret(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->getAccountSecrets()Ljava/util/Vector;

    move-result-object v1

    .line 50
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-ne v0, p1, :cond_1

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 53
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->storageKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->storageKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->serializeSecrets(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->storageKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public clearSecrets()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->storageKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->storageKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->storageKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public getAccountSecrets()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 93
    .local v0, secrets:Ljava/util/Vector;
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->storageKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->storageKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->storageKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, serializedSecrets:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 98
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;->deserializeSecrets(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 102
    .end local v1           #serializedSecrets:Ljava/lang/String;
    :cond_0
    return-object v0
.end method
