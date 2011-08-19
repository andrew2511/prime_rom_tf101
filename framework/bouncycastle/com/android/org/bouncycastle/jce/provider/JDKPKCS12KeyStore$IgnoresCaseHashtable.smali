.class Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;
.super Ljava/lang/Object;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IgnoresCaseHashtable"
.end annotation


# instance fields
.field private keys:Ljava/util/Hashtable;

.field private orig:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1542
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    .line 1543
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public elements()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "alias"

    .prologue
    const/4 v3, 0x0

    .line 1579
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    if-nez p1, :cond_10

    move-object v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1581
    .local v0, k:Ljava/lang/String;
    if-nez v0, :cond_15

    move-object v1, v3

    .line 1586
    :goto_f
    return-object v1

    .line 1579
    .end local v0           #k:Ljava/lang/String;
    :cond_10
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 1586
    .restart local v0       #k:Ljava/lang/String;
    :cond_15
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_f
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1547
    if-nez p1, :cond_1e

    const/4 v2, 0x0

    move-object v1, v2

    .line 1548
    .local v1, lower:Ljava/lang/String;
    :goto_4
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1549
    .local v0, k:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 1551
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    :cond_13
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    return-void

    .line 1547
    .end local v0           #k:Ljava/lang/String;
    .end local v1           #lower:Ljava/lang/String;
    :cond_1e
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_4
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "alias"

    .prologue
    const/4 v3, 0x0

    .line 1566
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    if-nez p1, :cond_10

    move-object v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1568
    .local v0, k:Ljava/lang/String;
    if-nez v0, :cond_15

    move-object v1, v3

    .line 1573
    :goto_f
    return-object v1

    .line 1566
    .end local v0           #k:Ljava/lang/String;
    :cond_10
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 1573
    .restart local v0       #k:Ljava/lang/String;
    :cond_15
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_f
.end method
