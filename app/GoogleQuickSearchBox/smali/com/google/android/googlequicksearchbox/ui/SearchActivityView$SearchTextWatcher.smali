.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 650
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 652
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 653
    .local v0, empty:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-boolean v1, v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    if-eq v0, v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iput-boolean v0, v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    .line 655
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateUi(Z)V

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->access$900(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->access$1000(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->access$1000(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;->onQueryChanged()V

    .line 662
    :cond_1
    return-void

    .line 652
    .end local v0           #empty:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
