.class Lcom/android/browser/Tab$7;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Lcom/android/browser/DataController$OnQueryUrlIsBookmark;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
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
    .line 1786
    iput-object p1, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryUrlIsBookmark(Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "isBookmark"

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mIsBookmarkedSite:Ljava/lang/Boolean;

    .line 1792
    iget-object v0, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V

    .line 1795
    :cond_0
    return-void
.end method
