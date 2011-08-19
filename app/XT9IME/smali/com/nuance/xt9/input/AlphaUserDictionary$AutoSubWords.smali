.class public Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;
.super Lcom/nuance/xt9/input/AlphaUserDictionary;
.source "AlphaUserDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/AlphaUserDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoSubWords"
.end annotation


# instance fields
.field private mCurrenSubs:Ljava/lang/StringBuilder;

.field private mCurrentWord:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "defaultLanguageId"
    .parameter "databaseConfigFile"

    .prologue
    const/16 v1, 0x40

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/AlphaUserDictionary;-><init>(ILjava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mCurrentWord:Ljava/lang/StringBuilder;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mCurrenSubs:Ljava/lang/StringBuilder;

    .line 132
    return-void
.end method


# virtual methods
.method public add(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 3
    .parameter "userWord"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getSubs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/AlphaInput;->asdbAdd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public delete(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userWord"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInput;->asdbDelete(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public find(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 3
    .parameter "userWord"

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getSubs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/AlphaInput;->asdbFind(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFirst(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userWord"

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 180
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mCurrenSubs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 182
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->getNext(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v0

    goto :goto_0
.end method

.method public getNext(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 4
    .parameter "userWord"

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v3

    .line 201
    :goto_0
    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mEmpty:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nuance/xt9/input/UserWord;->setWord(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mCurrentWord:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mCurrenSubs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/AlphaInput;->asdbGetNext(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v0}, Lcom/nuance/xt9/input/UserWord;->setWord(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mCurrenSubs:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v0}, Lcom/nuance/xt9/input/UserWord;->setSubs(Ljava/lang/String;)V

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public update(Lcom/nuance/xt9/input/UserWord;Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "old"
    .parameter "userWord"

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 165
    :goto_0
    return v0

    .line 158
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->delete(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0, p2}, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->add(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;->add(Lcom/nuance/xt9/input/UserWord;)Z

    :cond_2
    move v0, v1

    .line 165
    goto :goto_0
.end method
