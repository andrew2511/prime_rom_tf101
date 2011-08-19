.class Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;
.super Ljava/lang/Object;
.source "OAuthSignatureMethod.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oauth/signature/OAuthSignatureMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComparableParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field final value:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->value:Ljava/util/Map$Entry;

    .line 264
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, n:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, v:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->key:Ljava/lang/String;

    .line 269
    return-void
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "from"

    .prologue
    .line 276
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 259
    check-cast p1, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;

    .end local p1
    invoke-virtual {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->compareTo(Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;)I
    .locals 2
    .parameter "that"

    .prologue
    .line 280
    iget-object v0, p0, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->key:Ljava/lang/String;

    iget-object v1, p1, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->key:Ljava/lang/String;

    return-object v0
.end method
