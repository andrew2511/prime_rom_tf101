.class public final Lh;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh$a;
    }
.end annotation


# instance fields
.field private a:Ld;

.field private b:La$a;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ld;La$a;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lh;->a:Ld;

    iput-object p2, p0, Lh;->b:La$a;

    iput-boolean p3, p0, Lh;->c:Z

    iput-boolean v0, p0, Lh;->d:Z

    iput-boolean v0, p0, Lh;->e:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh;->d:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh;->e:Z

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lh;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh;->a:Ld;

    invoke-virtual {v0}, Ld;->d()Lc;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc;->a()V

    :goto_0
    iput-boolean v1, p0, Lh;->d:Z

    :cond_0
    iget-boolean v0, p0, Lh;->e:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, La;->a(Landroid/webkit/WebView;)V

    iput-boolean v1, p0, Lh;->e:Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "webView"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, La;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh;->a:Ld;

    iget-object v2, p0, Lh;->b:La$a;

    invoke-static {v1, v2, v0, p1}, La;->a(Ld;La$a;Landroid/net/Uri;Landroid/webkit/WebView;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lh;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Lh$a;

    iget-object v1, p0, Lh;->a:Ld;

    invoke-direct {v0, v1}, Lh$a;-><init>(Ld;)V

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lh$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v3

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL is not a GMSG and shouldn\'t launch intents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt;->e(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0
.end method
