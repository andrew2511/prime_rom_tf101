.class Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NextWord"
.end annotation


# instance fields
.field private mFrequency:I

.field public final mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;I)V
    .locals 0
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 87
    iput p2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    .line 88
    return-void
.end method


# virtual methods
.method public addFrequency(I)I
    .locals 1
    .parameter "add"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    .line 101
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    return v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    return v0
.end method

.method public setFrequency(I)I
    .locals 1
    .parameter "freq"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    .line 96
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mFrequency:I

    return v0
.end method
