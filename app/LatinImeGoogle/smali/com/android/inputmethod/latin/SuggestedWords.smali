.class public Lcom/android/inputmethod/latin/SuggestedWords;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/SuggestedWords$1;,
        Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;,
        Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;


# instance fields
.field public final mHasMinimalSuggestion:Z

.field public final mSuggestedWordInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTypedWordValid:Z

.field public final mWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/List;ZZLjava/util/List;)V

    sput-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;ZZLjava/util/List;)V
    .locals 1
    .parameter
    .parameter "typedWordValid"
    .parameter "hasMinamlSuggestion"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p4, suggestedWordInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    .line 41
    :goto_0
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    .line 42
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasMinimalSuggestion:Z

    .line 43
    iput-object p4, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/List;

    .line 44
    return-void

    .line 39
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/List;ZZLjava/util/List;Lcom/android/inputmethod/latin/SuggestedWords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/List;ZZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getWord(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "pos"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hasAutoCorrectionWord()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasMinimalSuggestion:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWordAboveAutoCorrectionScoreThreshold()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasMinimalSuggestion:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
