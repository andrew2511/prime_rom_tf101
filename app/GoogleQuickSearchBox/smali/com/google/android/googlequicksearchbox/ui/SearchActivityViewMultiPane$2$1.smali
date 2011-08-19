.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2$1;
.super Ljava/lang/Object;
.source "SearchActivityViewMultiPane.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;->setDisplayedQuery(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;

.field final synthetic val$displayedQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2$1;->val$displayedQuery:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->access$200(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2$1;->val$displayedQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->setSuggestedTextInQueryEditor(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method
