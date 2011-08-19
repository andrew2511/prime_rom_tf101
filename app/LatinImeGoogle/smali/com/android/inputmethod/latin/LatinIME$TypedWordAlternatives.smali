.class public Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;
.super Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedWordAlternatives"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;

.field private word:Lcom/android/inputmethod/latin/WordComposer;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/WordComposer;)V
    .locals 0
    .parameter
    .parameter "chosenWord"
    .parameter "wordComposer"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    .line 248
    invoke-direct {p0, p2}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;-><init>(Ljava/lang/CharSequence;)V

    .line 249
    iput-object p3, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    .line 250
    return-void
.end method

.method static synthetic access$800(Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;)Lcom/android/inputmethod/latin/WordComposer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method


# virtual methods
.method public getAlternatives()Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->access$000(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/WordComposer;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
