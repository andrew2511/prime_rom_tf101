.class Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient$1;
.super Ljava/lang/Object;
.source "PsychicWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient$1;->this$1:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient$1;->this$1:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$100(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient$1;->this$1:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$100(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$PsychicWebViewClient$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;->launchExternalUri(Landroid/net/Uri;)V

    .line 427
    :cond_0
    return-void
.end method
