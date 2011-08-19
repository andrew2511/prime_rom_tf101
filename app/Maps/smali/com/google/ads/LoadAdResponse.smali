.class Lcom/google/ads/LoadAdResponse;
.super Ljava/lang/Object;
.source "LoadAdResponse.java"

# interfaces
.implements Lcom/google/ads/AdResponse;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "LoadAdResponse"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/util/Map;Lcom/google/ads/GoogleAdView;)V
    .locals 3
    .parameter
    .parameter "adView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/GoogleAdView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "src"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, adUrl:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 33
    const-string v1, "LoadAdResponse"

    const-string v2, "ERROR: src parameter not found in loadAdUrl"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/ads/GoogleAdView;->loadAdFromUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
