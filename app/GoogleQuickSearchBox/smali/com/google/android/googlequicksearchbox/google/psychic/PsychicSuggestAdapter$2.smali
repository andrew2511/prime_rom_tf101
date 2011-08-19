.class Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$2;
.super Ljava/lang/Object;
.source "PsychicSuggestAdapter.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$SearchDomainChangeWatcher;


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
    .line 89
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$2;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchDomainChanged()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$2;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->access$000(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;)V

    .line 92
    return-void
.end method
