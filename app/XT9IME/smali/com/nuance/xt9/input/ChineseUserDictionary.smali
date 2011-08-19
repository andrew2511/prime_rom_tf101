.class Lcom/nuance/xt9/input/ChineseUserDictionary;
.super Ljava/lang/Object;
.source "ChineseUserDictionary.java"

# interfaces
.implements Lcom/nuance/xt9/input/UserDictionary;


# instance fields
.field private mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

.field private mCurrentLanguageId:I

.field private mCurrentWordIndex:I

.field private mDefaultLanguageId:I

.field protected mEmpty:Ljava/lang/String;

.field private mInitialized:Z

.field protected mPhrase:Ljava/lang/StringBuilder;

.field protected mSpell:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "defaultLanguageId"
    .parameter "databaseConfigFile"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mEmpty:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mPhrase:Ljava/lang/StringBuilder;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mSpell:Ljava/lang/StringBuilder;

    .line 21
    iput p1, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mDefaultLanguageId:I

    .line 22
    invoke-static {p2}, Lcom/nuance/xt9/input/ChineseInput;->getInstance(Ljava/lang/String;)Lcom/nuance/xt9/input/ChineseInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    .line 23
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->create()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->start()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mInitialized:Z

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 3
    .parameter "userWord"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getSpell()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/ChineseInput;->udbAdd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public delete(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userWord"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/ChineseInput;->udbDelete(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public find(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userWord"

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 66
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mCurrentLanguageId:I

    .line 111
    return-void
.end method

.method public getFirst(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userWord"

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 74
    :cond_0
    iput v1, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mCurrentWordIndex:I

    .line 75
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/ChineseUserDictionary;->getNext(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v0

    goto :goto_0
.end method

.method public getNext(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 5
    .parameter "userWord"

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v4

    .line 91
    :goto_0
    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mEmpty:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nuance/xt9/input/UserWord;->setPhrase(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mEmpty:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nuance/xt9/input/UserWord;->setSpell(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget v1, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mCurrentWordIndex:I

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mPhrase:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/xt9/input/ChineseInput;->udbGetNext(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mPhrase:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v0}, Lcom/nuance/xt9/input/UserWord;->setPhrase(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mSpell:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v0}, Lcom/nuance/xt9/input/UserWord;->setSpell(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mCurrentWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mCurrentWordIndex:I

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 91
    goto :goto_0
.end method

.method public hasActiveSequence()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method public start(I)Z
    .locals 2
    .parameter "languageId"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    iget v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mDefaultLanguageId:I

    iput v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mCurrentLanguageId:I

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mChineseInput:Lcom/nuance/xt9/input/ChineseInput;

    iget v1, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mCurrentLanguageId:I

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/ChineseInput;->setLanguage(I)Z

    .line 42
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mInitialized:Z

    return v0

    .line 36
    :cond_1
    iput p1, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mCurrentLanguageId:I

    goto :goto_0
.end method

.method public update(Lcom/nuance/xt9/input/UserWord;Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "old"
    .parameter "userWord"

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-boolean v0, p0, Lcom/nuance/xt9/input/ChineseUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 106
    :goto_0
    return v0

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/ChineseUserDictionary;->delete(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0, p2}, Lcom/nuance/xt9/input/ChineseUserDictionary;->add(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/ChineseUserDictionary;->add(Lcom/nuance/xt9/input/UserWord;)Z

    :cond_2
    move v0, v1

    .line 106
    goto :goto_0
.end method
