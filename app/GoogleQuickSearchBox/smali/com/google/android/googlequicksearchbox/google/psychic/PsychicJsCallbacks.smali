.class Lcom/google/android/googlequicksearchbox/google/psychic/PsychicJsCallbacks;
.super Ljava/lang/Object;
.source "PsychicJsCallbacks.java"


# instance fields
.field private final mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicJsCallbacks;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    .line 30
    return-void
.end method


# virtual methods
.method public psychicApiAvailable()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicJsCallbacks;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->psychicApiAvailable()V

    .line 43
    return-void
.end method

.method public psychicApiUnavailable()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicJsCallbacks;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->psychicApiUnavailable()V

    .line 48
    return-void
.end method

.method public queryInjected(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicJsCallbacks;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->queryInjected(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setSuggestions(Ljava/lang/String;)V
    .locals 1
    .parameter "suggestionsJson"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicJsCallbacks;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setSuggestions(Ljava/lang/String;)V

    .line 56
    return-void
.end method
