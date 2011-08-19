.class Lcom/android/browser/Tab$5;
.super Landroid/webkit/WebBackForwardListClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebBackForwardListClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexChanged(Landroid/webkit/WebHistoryItem;I)V
    .locals 2
    .parameter "item"
    .parameter "index"

    .prologue
    .line 1321
    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getCustomData()Ljava/lang/Object;

    move-result-object v0

    .line 1322
    .local v0, data:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    check-cast v0, Landroid/content/Intent;

    .end local v0           #data:Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/android/browser/Tab;->activateVoiceSearchMode(Landroid/content/Intent;)V

    .line 1325
    :cond_0
    return-void
.end method

.method public onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/android/browser/Tab$5;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$500(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/webkit/WebHistoryItem;->setCustomData(Ljava/lang/Object;)V

    .line 1318
    :cond_0
    return-void
.end method
