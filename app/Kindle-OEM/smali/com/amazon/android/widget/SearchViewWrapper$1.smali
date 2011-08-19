.class Lcom/amazon/android/widget/SearchViewWrapper$1;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextListener(Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/SearchViewWrapper;

.field final synthetic val$listener:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/SearchViewWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazon/android/widget/SearchViewWrapper$1;->this$0:Lcom/amazon/android/widget/SearchViewWrapper;

    iput-object p2, p0, Lcom/amazon/android/widget/SearchViewWrapper$1;->val$listener:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper$1;->val$listener:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

    invoke-interface {v0, p1}, Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazon/android/widget/SearchViewWrapper$1;->val$listener:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

    invoke-interface {v0, p1}, Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
