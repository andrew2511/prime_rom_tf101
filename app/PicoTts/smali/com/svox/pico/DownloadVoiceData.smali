.class public Lcom/svox/pico/DownloadVoiceData;
.super Landroid/app/Activity;
.source "DownloadVoiceData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const-string v2, "market://search?q=pname:com.svox.langpack.installer"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 33
    .local v1, marketUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .local v0, marketIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/svox/pico/DownloadVoiceData;->startActivityForResult(Landroid/content/Intent;I)V

    .line 35
    invoke-virtual {p0}, Lcom/svox/pico/DownloadVoiceData;->finish()V

    .line 36
    return-void
.end method
