.class public Lcom/nuance/xt9/input/Chinese/ChineseCandidate;
.super Ljava/lang/Object;
.source "ChineseCandidate.java"


# instance fields
.field private mFrequence:I

.field private mWordId:I

.field private mWords:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrequence()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->mFrequence:I

    return v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->mWords:Ljava/lang/String;

    return-object v0
.end method

.method public getWordId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->mWordId:I

    return v0
.end method

.method public setFrequence(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 34
    iput p1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->mFrequence:I

    .line 35
    return-void
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 0
    .parameter "word"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->mWords:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setWordId(I)V
    .locals 0
    .parameter "aID"

    .prologue
    .line 50
    iput p1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->mWordId:I

    .line 51
    return-void
.end method
