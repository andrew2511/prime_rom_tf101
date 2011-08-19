.class public Lcom/nuance/xt9/input/AlphaUserDictionary;
.super Ljava/lang/Object;
.source "AlphaUserDictionary.java"

# interfaces
.implements Lcom/nuance/xt9/input/UserDictionary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlphaUserDictionary"


# instance fields
.field protected mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

.field protected mCurrentLanguageId:I

.field private mCurrentWord:Ljava/lang/StringBuilder;

.field protected mDefaultLanguageId:I

.field protected mEmpty:Ljava/lang/String;

.field protected mInitialized:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter "defaultLanguageId"
    .parameter "databaseConfigFile"

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mEmpty:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mCurrentWord:Ljava/lang/StringBuilder;

    .line 21
    iput p1, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mDefaultLanguageId:I

    .line 22
    invoke-static {p2}, Lcom/nuance/xt9/input/AlphaInput;->getInstance(Ljava/lang/String;)Lcom/nuance/xt9/input/AlphaInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->create()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    const-string v0, "AlphaUserDictionary"

    const-string v1, "Failed to created AlphaInput Session"

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-boolean v2, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mInitialized:Z

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->start()Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    const-string v0, "AlphaUserDictionary"

    const-string v1, "Failed to start AlphaInput Session"

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-boolean v2, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mInitialized:Z

    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mInitialized:Z

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userWord"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInput;->udbAdd(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public delete(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userWord"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInput;->udbDelete(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public find(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userWord"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInput;->udbFind(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mCurrentLanguageId:I

    .line 119
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInput;->finish()V

    .line 120
    return-void
.end method

.method public getFirst(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userWord"

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaUserDictionary;->getNext(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v0

    goto :goto_0
.end method

.method public getNext(Lcom/nuance/xt9/input/UserWord;)Z
    .locals 3
    .parameter "userWord"

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 106
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mEmpty:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nuance/xt9/input/UserWord;->setWord(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInput;->udbGetNext(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v0}, Lcom/nuance/xt9/input/UserWord;->setWord(Ljava/lang/String;)V

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/xt9/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public hasActiveSequence()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public start(I)Z
    .locals 2
    .parameter "languageId"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p1}, Lcom/nuance/xt9/input/InputMethods$Language;->isCKJ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mDefaultLanguageId:I

    iput v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mCurrentLanguageId:I

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mAlphaInput:Lcom/nuance/xt9/input/AlphaInput;

    iget v1, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mCurrentLanguageId:I

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/AlphaInput;->setLanguage(I)Z

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mInitialized:Z

    return v0

    .line 46
    :cond_1
    iput p1, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mCurrentLanguageId:I

    goto :goto_0
.end method

.method public update(Lcom/nuance/xt9/input/UserWord;Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "old"
    .parameter "userWord"

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaUserDictionary;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaUserDictionary;->delete(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0, p2}, Lcom/nuance/xt9/input/AlphaUserDictionary;->add(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaUserDictionary;->add(Lcom/nuance/xt9/input/UserWord;)Z

    :cond_2
    move v0, v1

    .line 82
    goto :goto_0
.end method
