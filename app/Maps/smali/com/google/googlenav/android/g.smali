.class Lcom/google/googlenav/android/g;
.super Lcom/google/googlenav/android/u;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/android/u;-><init>()V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "q"

    aput-object v1, v0, v2

    const-string v1, "ck"

    aput-object v1, v0, v3

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllButNulAndAngleBracketsLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/android/g;->registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cbp"

    aput-object v1, v0, v2

    const-string v1, "z"

    aput-object v1, v0, v3

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/android/g;->registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    return-void
.end method
