.class Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$1;
.super Landroid/database/DataSetObserver;
.source "PsychicSuggestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;-><init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$1;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$1;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->access$000(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;)V

    .line 82
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$1;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->access$000(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;)V

    .line 87
    return-void
.end method
