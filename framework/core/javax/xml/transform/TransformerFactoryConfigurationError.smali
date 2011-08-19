.class public Ljavax/xml/transform/TransformerFactoryConfigurationError;
.super Ljava/lang/Error;
.source "TransformerFactoryConfigurationError.java"


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 3
    .parameter "e"
    .parameter "msg"

    .prologue
    .line 84
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 58
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 98
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, message:Ljava/lang/String;
    if-nez v0, :cond_11

    iget-object v1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_11

    .line 101
    iget-object v1, p0, Ljavax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_10
    return-object v1

    :cond_11
    move-object v1, v0

    goto :goto_10
.end method
