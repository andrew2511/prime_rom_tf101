.class Lcom/google/googlenav/android/I;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/w;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/I;->a:Lcom/google/googlenav/android/w;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/Q;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/googlenav/android/I;->a:Lcom/google/googlenav/android/w;

    invoke-static {v1}, Lcom/google/googlenav/android/w;->c(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->x()Ln/b;

    move-result-object p0

    check-cast p0, LP/a;

    invoke-virtual {p0, v1}, LP/a;->a(Ljava/lang/String;)V

    const-string v2, "UserAgentPref"

    invoke-static {v2, v1}, Lac/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
