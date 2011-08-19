.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$7;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSuggestionsController()Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$7;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSuggestionsUpdating(Z)V
    .locals 1
    .parameter "updating"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$7;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-static {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->access$700(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Z)V

    .line 389
    return-void
.end method
