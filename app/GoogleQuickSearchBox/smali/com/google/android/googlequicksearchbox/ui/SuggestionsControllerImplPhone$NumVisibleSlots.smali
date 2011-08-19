.class Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;
.super Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;
.source "SuggestionsControllerImplPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumVisibleSlots"
.end annotation


# instance fields
.field private mNumVisibleSlots:I

.field private final mOrientation:I

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;ILcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;)V
    .locals 2
    .parameter
    .parameter "orientation"
    .parameter "config"
    .parameter "settings"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;

    .line 258
    invoke-virtual {p3}, Lcom/google/android/googlequicksearchbox/Config;->getDefaultNumVisibleSuggestionSlots()I

    move-result v0

    invoke-interface {p4, p2, v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getNumVisibleSuggestionSlots(II)I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;-><init>(II)V

    .line 260
    iput p2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mOrientation:I

    .line 261
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 262
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->get()I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mNumVisibleSlots:I

    .line 263
    return-void
.end method


# virtual methods
.method public get()I
    .locals 4

    .prologue
    .line 267
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedMinValue;->get()I

    move-result v0

    .line 268
    .local v0, numVisibleSlots:I
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mNumVisibleSlots:I

    if-eq v0, v1, :cond_0

    .line 269
    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mNumVisibleSlots:I

    .line 270
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mOrientation:I

    iget v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mNumVisibleSlots:I

    invoke-interface {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setNumVisibleSuggestionSlots(II)V

    .line 272
    :cond_0
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->mNumVisibleSlots:I

    return v1
.end method
