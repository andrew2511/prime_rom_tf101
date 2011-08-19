.class public Lcom/nuance/xt9/input/Chinese/ChineseCandidates;
.super Ljava/lang/Object;
.source "ChineseCandidates.java"


# static fields
.field private static MAX_HZ_LEN:I

.field private static mIDSetLen:I

.field private static mUserPY:Ljava/lang/String;

.field private static mUserWordIDSet:[I


# instance fields
.field private mAdjustFlag:Z

.field private mAdjustLen:I

.field private mCount:I

.field private mHZResults:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

.field private mRtnPY:Ljava/lang/String;

.field private mSaveFlag:Z

.field private mSelectedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0xa

    sput v0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->MAX_HZ_LEN:I

    .line 21
    sget v0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->MAX_HZ_LEN:I

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mUserWordIDSet:[I

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mIDSetLen:I

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mUserPY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mRtnPY:Ljava/lang/String;

    .line 17
    iput-boolean v1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mSaveFlag:Z

    .line 18
    iput-boolean v1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mAdjustFlag:Z

    .line 30
    iput v1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mCount:I

    .line 31
    iput v1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mSelectedIndex:I

    .line 32
    return-void
.end method


# virtual methods
.method public clearUserWordIDSet()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    sput v0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mIDSetLen:I

    .line 144
    return-void
.end method

.method public freeChineseCandidates()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mCount:I

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mHZResults:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public getAdjustFlag()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->getSelectedIndex()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 221
    :goto_0
    return v0

    .line 216
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mAdjustLen:I

    iget v1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mSelectedIndex:I

    if-lt v0, v1, :cond_1

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mAdjustFlag:Z

    .line 221
    :goto_1
    iget-boolean v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mAdjustFlag:Z

    goto :goto_0

    .line 219
    :cond_1
    iput-boolean v2, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mAdjustFlag:Z

    goto :goto_1
.end method

.method public getAdjustLen()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mAdjustLen:I

    return v0
.end method

.method public getChineseCandidateList()[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mHZResults:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mCount:I

    return v0
.end method

.method public getIDListLen()I
    .locals 1

    .prologue
    .line 168
    sget v0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mIDSetLen:I

    return v0
.end method

.method public getRtnPY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mRtnPY:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveFlag()Z
    .locals 1

    .prologue
    .line 200
    sget v0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mIDSetLen:I

    if-lez v0, :cond_0

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mSaveFlag:Z

    .line 205
    :goto_0
    iget-boolean v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mSaveFlag:Z

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mSaveFlag:Z

    goto :goto_0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mSelectedIndex:I

    return v0
.end method

.method public getSelectedWordId()I
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mHZResults:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    iget v1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mSelectedIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->getWordId()I

    move-result v0

    return v0
.end method

.method public getUserPY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mUserPY:Ljava/lang/String;

    return-object v0
.end method

.method public getUserWordIDSet()[I
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mUserWordIDSet:[I

    return-object v0
.end method

.method public initChineseCandidates(I)V
    .locals 3
    .parameter "aCount"

    .prologue
    .line 39
    new-array v1, p1, [Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    iput-object v1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mHZResults:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    .line 40
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mHZResults:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    new-instance v2, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    invoke-direct {v2}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;-><init>()V

    aput-object v2, v1, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public setAjustLen(I)V
    .locals 0
    .parameter "aLen"

    .prologue
    .line 192
    iput p1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mAdjustLen:I

    .line 193
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter "aCount"

    .prologue
    .line 184
    iput p1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mCount:I

    .line 185
    return-void
.end method

.method public setOneResult(Ljava/lang/String;III)V
    .locals 1
    .parameter "aWord"
    .parameter "aWordId"
    .parameter "aFreq"
    .parameter "pos"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mHZResults:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    aget-object v0, v0, p4

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->setWord(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mHZResults:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    aget-object v0, v0, p4

    invoke-virtual {v0, p2}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->setWordId(I)V

    .line 122
    iget-object v0, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mHZResults:[Lcom/nuance/xt9/input/Chinese/ChineseCandidate;

    aget-object v0, v0, p4

    invoke-virtual {v0, p3}, Lcom/nuance/xt9/input/Chinese/ChineseCandidate;->setFrequence(I)V

    .line 123
    return-void
.end method

.method public setOneWordIdintoList(I)V
    .locals 3
    .parameter "wordId"

    .prologue
    .line 152
    sget-object v0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mUserWordIDSet:[I

    sget v1, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mIDSetLen:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mIDSetLen:I

    aput p1, v0, v1

    .line 153
    return-void
.end method

.method public setRtnPY(Ljava/lang/String;)V
    .locals 0
    .parameter "py"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mRtnPY:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .parameter "aIndex"

    .prologue
    .line 176
    iput p1, p0, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mSelectedIndex:I

    .line 177
    return-void
.end method

.method public setUserPY(Ljava/lang/String;)V
    .locals 0
    .parameter "py"

    .prologue
    .line 93
    sput-object p1, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mUserPY:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUserWordIDSet([II)V
    .locals 3
    .parameter "idList"
    .parameter "len"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, i:I
    sput p2, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mIDSetLen:I

    .line 134
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 135
    sget-object v1, Lcom/nuance/xt9/input/Chinese/ChineseCandidates;->mUserWordIDSet:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method
