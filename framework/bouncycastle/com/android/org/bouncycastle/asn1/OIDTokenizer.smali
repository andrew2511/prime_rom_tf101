.class public Lcom/android/org/bouncycastle/asn1/OIDTokenizer;
.super Ljava/lang/Object;
.source "OIDTokenizer.java"


# instance fields
.field private index:I

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "oid"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    .line 19
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 3

    .prologue
    .line 23
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public nextToken()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 28
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    if-ne v2, v5, :cond_7

    .line 30
    const/4 v2, 0x0

    .line 46
    :goto_6
    return-object v2

    .line 34
    :cond_7
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    const/16 v3, 0x2e

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 36
    .local v0, end:I
    if-ne v0, v5, :cond_1f

    .line 38
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, token:Ljava/lang/String;
    iput v5, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    move-object v2, v1

    .line 40
    goto :goto_6

    .line 43
    .end local v1           #token:Ljava/lang/String;
    :cond_1f
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 45
    .restart local v1       #token:Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->index:I

    move-object v2, v1

    .line 46
    goto :goto_6
.end method
