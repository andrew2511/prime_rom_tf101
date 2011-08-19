.class Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;
.super Landroid/os/AsyncTask;
.source "HelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/HelpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HintsCreationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/android/voicesearch/Hints$HintData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/HelpDialog;Lcom/google/android/voicesearch/HelpDialog$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 634
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/Hints$HintData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$2600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$2600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/Hints;->getHints(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/Hints$HintData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    iget-object v3, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;-><init>(Lcom/google/android/voicesearch/HelpDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 646
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$2700(Lcom/google/android/voicesearch/HelpDialog;)V

    .line 647
    return-void
.end method
