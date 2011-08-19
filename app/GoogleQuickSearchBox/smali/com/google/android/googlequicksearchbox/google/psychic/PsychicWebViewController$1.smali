.class Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$1;
.super Ljava/lang/Object;
.source "PsychicWebViewController.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/QsbWebView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$1;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$1;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$100(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$1;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$100(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;->onScroll()V

    .line 271
    :cond_0
    return-void
.end method
