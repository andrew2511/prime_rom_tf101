.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$InteractionListener;
.super Ljava/lang/Object;
.source "SearchActivityViewMultiPane.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/QsbWebViewInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InteractionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$InteractionListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$InteractionListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;)V

    return-void
.end method


# virtual methods
.method public launchExternalUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    .local v0, launchBrowser:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$InteractionListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->launchIntent(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method public onScroll()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$InteractionListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->hideInputMethod()V

    .line 213
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$InteractionListener;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->forwardKeyToQueryTextView(Landroid/view/KeyEvent;)Z

    .line 209
    return-void
.end method
