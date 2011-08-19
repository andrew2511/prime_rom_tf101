.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$3;
.super Ljava/lang/Object;
.source "SearchActivityViewMultiPane.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;


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


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$3;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newText"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$3;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->access$202(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;Z)Z

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane$3;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewMultiPane;->setSuggestedTextInQueryEditor(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method
