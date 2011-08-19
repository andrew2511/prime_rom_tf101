.class public Lcom/google/ads/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdRequest$Gender;,
        Lcom/google/ads/AdRequest$ErrorCode;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "Ads"

.field public static final VERSION:Ljava/lang/String; = "4.0.2"


# instance fields
.field private a:Lcom/google/ads/AdRequest$Gender;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/location/Location;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->a:Lcom/google/ads/AdRequest$Gender;

    iput-object v0, p0, Lcom/google/ads/AdRequest;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/ads/AdRequest;->d:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Landroid/location/Location;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/AdRequest;->f:Z

    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/google/ads/AdRequest;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->d:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addKeyword(Ljava/lang/String;)V
    .locals 1
    .parameter "keyword"

    .prologue
    iget-object v0, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRequestMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    if-eqz v1, :cond_0

    const-string v1, "kw"

    iget-object v2, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/ads/AdRequest;->a:Lcom/google/ads/AdRequest$Gender;

    if-eqz v1, :cond_1

    const-string v1, "cust_gender"

    iget-object v2, p0, Lcom/google/ads/AdRequest;->a:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v2}, Lcom/google/ads/AdRequest$Gender;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/google/ads/AdRequest;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "cust_age"

    iget-object v2, p0, Lcom/google/ads/AdRequest;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/google/ads/AdRequest;->e:Landroid/location/Location;

    if-eqz v1, :cond_3

    const-string v1, "uule"

    iget-object v2, p0, Lcom/google/ads/AdRequest;->e:Landroid/location/Location;

    invoke-static {v2}, Lu;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v1, p0, Lcom/google/ads/AdRequest;->f:Z

    if-eqz v1, :cond_4

    const-string v1, "testing"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/google/ads/AdRequest;->d:Ljava/util/Map;

    if-eqz v1, :cond_5

    const-string v1, "extras"

    iget-object v2, p0, Lcom/google/ads/AdRequest;->d:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    iput-object p1, p0, Lcom/google/ads/AdRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/google/ads/AdRequest;->d:Ljava/util/Map;

    return-void
.end method

.method public setGender(Lcom/google/ads/AdRequest$Gender;)V
    .locals 0
    .parameter "gender"

    .prologue
    iput-object p1, p0, Lcom/google/ads/AdRequest;->a:Lcom/google/ads/AdRequest$Gender;

    return-void
.end method

.method public setKeywords(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, keywords:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/ads/AdRequest;->c:Ljava/util/Set;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    iput-object p1, p0, Lcom/google/ads/AdRequest;->e:Landroid/location/Location;

    return-void
.end method

.method public setTesting(Z)V
    .locals 0
    .parameter "testing"

    .prologue
    iput-boolean p1, p0, Lcom/google/ads/AdRequest;->f:Z

    return-void
.end method
