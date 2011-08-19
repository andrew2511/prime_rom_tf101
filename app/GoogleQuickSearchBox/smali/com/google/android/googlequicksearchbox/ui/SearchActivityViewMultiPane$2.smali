.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;
.super Ljava/lang/Object;
.source "SearchActivityViewMultiPane.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicQueryUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->initializePsychic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;

.field final synthetic val$app:Lcom/google/android/googlequicksearchbox/QsbApplication;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;Lcom/google/android/googlequicksearchbox/QsbApplication;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;->val$app:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDisplayedQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "originalQuery"
    .parameter "displayedQuery"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;->val$app:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method
