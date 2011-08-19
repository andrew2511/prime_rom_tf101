.class Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;
.super Ljava/lang/Object;
.source "SuggestSourceSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionConsumer"
.end annotation


# instance fields
.field private final mSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V
    .locals 0
    .parameter
    .parameter "source"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->this$0:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->mSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    .line 237
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;)Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->mSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    return-object v0
.end method


# virtual methods
.method public getSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->mSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    return-object v0
.end method

.method public getSuggestions(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->mSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->canQueryNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->mSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer$1;-><init>(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 261
    :cond_0
    return-void
.end method
