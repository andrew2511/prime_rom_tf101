.class public final Ln;
.super Ljava/lang/Object;

# interfaces
.implements Li;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ld;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "Could not get the action parameter for open GMSG."

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "webapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Le;

    const-string v1, "webapp"

    invoke-direct {v0, v1, p2}, Le;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/AdActivity;->launchAdActivity(Ld;Le;)V

    goto :goto_0

    :cond_1
    new-instance v0, Le;

    const-string v1, "intent"

    invoke-direct {v0, v1, p2}, Le;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Lcom/google/ads/AdActivity;->launchAdActivity(Ld;Le;)V

    goto :goto_0
.end method
