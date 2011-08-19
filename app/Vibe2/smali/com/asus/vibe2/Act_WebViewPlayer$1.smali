.class Lcom/asus/vibe2/Act_WebViewPlayer$1;
.super Landroid/webkit/WebViewClient;
.source "Act_WebViewPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/vibe2/Act_WebViewPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Act_WebViewPlayer;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Act_WebViewPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/asus/vibe2/Act_WebViewPlayer$1;->this$0:Lcom/asus/vibe2/Act_WebViewPlayer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 91
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method
