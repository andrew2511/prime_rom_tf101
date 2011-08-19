.class Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer$1;
.super Ljava/lang/Object;
.source "SuggestSourceSelector.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->getSuggestions(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Lcom/google/android/googlequicksearchbox/SuggestionList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

.field final synthetic val$request:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer$1;->this$1:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer$1;->val$request:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 2
    .parameter "result"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer$1;->val$request:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer$1;->this$1:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->access$500(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;)Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->gotSuggestions(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer$1;->consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v0

    return v0
.end method
