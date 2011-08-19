.class Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;
.super Ljava/lang/Object;
.source "UserBigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/UserBigramDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bigram"
.end annotation


# instance fields
.field public final frequency:I

.field public final mWord1:Ljava/lang/String;

.field public final mWord2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    .line 118
    iput p3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->frequency:I

    .line 119
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "bigram"

    .prologue
    .line 123
    move-object v0, p1

    check-cast v0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;

    move-object v1, v0

    .line 124
    .local v1, bigram2:Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;
    iget-object v2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
