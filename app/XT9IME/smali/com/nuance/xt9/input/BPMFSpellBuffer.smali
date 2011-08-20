.class public Lcom/nuance/xt9/input/BPMFSpellBuffer;
.super Ljava/lang/Object;
.source "BPMFSpellBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/BPMFSpellBuffer$OnSpellBufferClearedListener;
    }
.end annotation


# static fields
.field public static final BPMF_NORMAL_MODE:I = 0x0

.field public static final BPMF_NUMEBR_KEY_MODE:I = 0x1

.field public static final BPMF_SHIFT_KEY_MODE:I = 0x2


# instance fields
.field private mBPMFString:Ljava/lang/String;

.field private mListener:Lcom/nuance/xt9/input/BPMFSpellBuffer$OnSpellBufferClearedListener;

.field private mSlectionMode:I

.field private mTextFinalSection:Ljava/lang/CharSequence;

.field private mTextInitialSection:Ljava/lang/CharSequence;

.field private mTextInterSection:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInitialSection:Ljava/lang/CharSequence;

    .line 18
    iput-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInterSection:Ljava/lang/CharSequence;

    .line 19
    iput-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextFinalSection:Ljava/lang/CharSequence;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInitialSection:Ljava/lang/CharSequence;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInterSection:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextFinalSection:Ljava/lang/CharSequence;

    .line 28
    return-void
.end method

.method private hasFinalSection(Ljava/lang/CharSequence;)I
    .locals 4
    .parameter "bpmfseq"

    .prologue
    .line 276
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 277
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v2, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextFinalSection:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 278
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextFinalSection:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    move v2, v1

    .line 283
    .end local v1           #j:I
    :goto_2
    return v2

    .line 277
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v1           #j:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_2
.end method

.method private hasInitSection(Ljava/lang/CharSequence;)I
    .locals 4
    .parameter "bpmfseq"

    .prologue
    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 255
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v2, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInitialSection:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 256
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInitialSection:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    move v2, v1

    .line 261
    .end local v1           #j:I
    :goto_2
    return v2

    .line 255
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v1           #j:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_2
.end method

.method private hasInterSection(Ljava/lang/CharSequence;)I
    .locals 4
    .parameter "bpmfseq"

    .prologue
    .line 265
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 266
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v2, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInterSection:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 267
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInterSection:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    move v2, v1

    .line 272
    .end local v1           #j:I
    :goto_2
    return v2

    .line 266
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 265
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v1           #j:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_2
.end method

.method private isFinalSection(C)Z
    .locals 2
    .parameter "bpmfchar"

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextFinalSection:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextFinalSection:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 247
    const/4 v1, 0x1

    .line 250
    :goto_1
    return v1

    .line 245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isInitSection(C)Z
    .locals 2
    .parameter "bpmfchar"

    .prologue
    .line 227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInitialSection:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInitialSection:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 229
    const/4 v1, 0x1

    .line 232
    :goto_1
    return v1

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isInterSection(C)Z
    .locals 2
    .parameter "bpmfchar"

    .prologue
    .line 236
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInterSection:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInterSection:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 238
    const/4 v1, 0x1

    .line 241
    :goto_1
    return v1

    .line 236
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addBPMFChar(C)V
    .locals 8
    .parameter "bpmfchar"

    .prologue
    const/4 v6, -0x1

    .line 31
    const/4 v1, -0x1

    .line 32
    .local v1, location:I
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->isInitSection(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 33
    iget-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->hasInitSection(Ljava/lang/CharSequence;)I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 35
    iget-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInitialSection:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 36
    .local v4, old:C
    iget-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-virtual {v5, v4, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    .line 64
    .end local v4           #old:C
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_2
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->isInterSection(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 41
    iget-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->hasInterSection(Ljava/lang/CharSequence;)I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 42
    iget-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextInterSection:Ljava/lang/CharSequence;

    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_3
    iget-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->hasInitSection(Ljava/lang/CharSequence;)I

    move-result v2

    .line 45
    .local v2, locationA:I
    iget-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->hasFinalSection(Ljava/lang/CharSequence;)I

    move-result v3

    .line 46
    .local v3, locationC:I
    if-eq v2, v6, :cond_4

    if-eq v3, v6, :cond_4

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_4
    if-eq v2, v6, :cond_5

    if-ne v3, v6, :cond_5

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    goto/16 :goto_0

    .line 53
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    goto/16 :goto_0

    .line 56
    .end local v2           #locationA:I
    .end local v3           #locationC:I
    :cond_6
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->isFinalSection(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    iget-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->hasFinalSection(Ljava/lang/CharSequence;)I

    move-result v1

    if-eq v1, v6, :cond_7

    .line 58
    iget-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mTextFinalSection:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 59
    .local v0, ch:C
    iget-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-virtual {v5, v0, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    goto/16 :goto_0

    .line 61
    .end local v0           #ch:C
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mListener:Lcom/nuance/xt9/input/BPMFSpellBuffer$OnSpellBufferClearedListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mListener:Lcom/nuance/xt9/input/BPMFSpellBuffer$OnSpellBufferClearedListener;

    invoke-interface {v0}, Lcom/nuance/xt9/input/BPMFSpellBuffer$OnSpellBufferClearedListener;->onSpellBufferCleared()V

    .line 87
    :cond_0
    return-void
.end method

.method public getBMPFString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    return-object v0
.end method

.method public getBMPFStringLength()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getOnSpellBufferClearedListener()Lcom/nuance/xt9/input/BPMFSpellBuffer$OnSpellBufferClearedListener;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mListener:Lcom/nuance/xt9/input/BPMFSpellBuffer$OnSpellBufferClearedListener;

    return-object v0
.end method

.method public getSelectionMode()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    return v0
.end method

.method public handleBackspace(Lcom/nuance/xt9/input/ChineseInput;)Z
    .locals 2
    .parameter "chineseInput"

    .prologue
    const/4 v1, 0x1

    .line 185
    iget v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    if-ne v0, v1, :cond_0

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    .line 187
    invoke-virtual {p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->clearBuffer()V

    .line 188
    invoke-virtual {p1}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 193
    :goto_0
    return v1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->removeLastBMPFString()V

    goto :goto_0
.end method

.method public handleDPadDownKey(ILcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "currCandidate"
    .parameter "inputView"

    .prologue
    const/4 v2, 0x1

    .line 159
    iget v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 160
    :cond_0
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->turnToNextPageCycle()V

    move v0, v2

    .line 163
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleDPadUpKey(ILcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "currCandidate"
    .parameter "inputView"

    .prologue
    const/4 v2, 0x1

    .line 151
    iget v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p2}, Lcom/nuance/xt9/input/CandidatesListView;->turnToPreviousPageCycle()V

    move v0, v2

    .line 155
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleEnterKey(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInput;)Z
    .locals 3
    .parameter "currCandidate"
    .parameter "chineseInput"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 138
    invoke-virtual {p1}, Lcom/nuance/xt9/input/CandidatesListView;->isEnableHighlight()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/CandidatesListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    if-ne v0, v2, :cond_1

    .line 140
    :cond_0
    iput v2, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    .line 141
    invoke-virtual {p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->clearBuffer()V

    .line 142
    invoke-virtual {p1}, Lcom/nuance/xt9/input/CandidatesListView;->selectActiveWord()V

    .line 143
    invoke-virtual {p2}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    move v0, v1

    .line 147
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleNumberKey(ILandroid/view/KeyEvent;Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;Lcom/nuance/xt9/input/ChineseInput;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"
    .parameter "currCandidate"
    .parameter "inputView"
    .parameter "chineseInput"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 111
    iget v2, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 134
    :goto_0
    return v2

    .line 113
    :cond_0
    iget v2, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    if-ne v2, v4, :cond_5

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 117
    :cond_1
    sub-int v0, p1, v5

    .line 118
    .local v0, index:I
    if-lt p1, v5, :cond_4

    const/16 v2, 0x10

    if-gt p1, v2, :cond_4

    invoke-virtual {p3}, Lcom/nuance/xt9/input/CandidatesListView;->wordCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 121
    invoke-virtual {p3, v0}, Lcom/nuance/xt9/input/CandidatesListView;->getNumericIndexWord(I)I

    move-result v1

    .line 122
    .local v1, numericIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v2, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    if-eq v2, v3, :cond_3

    :cond_2
    iget v2, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    if-ne v2, v4, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    :cond_3
    iput v4, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    .line 127
    invoke-virtual {p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->clearBuffer()V

    .line 128
    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2, p3}, Lcom/nuance/xt9/input/ChineseInputView;->handleSelectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 129
    invoke-virtual {p5}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .end local v1           #numericIndex:I
    :cond_4
    move v2, v3

    .line 132
    goto :goto_0

    .line 134
    .end local v0           #index:I
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public handleOtherKey(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInput;)Z
    .locals 3
    .parameter "currCandidate"
    .parameter "chineseInput"

    .prologue
    const/4 v2, 0x0

    .line 175
    iget v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    iput v2, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    .line 177
    invoke-virtual {p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->clearBuffer()V

    .line 178
    invoke-virtual {p1}, Lcom/nuance/xt9/input/CandidatesListView;->selectActiveWord()V

    .line 179
    invoke-virtual {p2}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 181
    :cond_0
    return v2
.end method

.method public handlePrediction()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public handleSpaceKey(Lcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;)Z
    .locals 3
    .parameter "currCandidate"
    .parameter "inputView"

    .prologue
    const/4 v2, 0x1

    .line 167
    iget v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/xt9/input/CandidatesListView;->turnToNextPageCycle()V

    move v0, v2

    .line 171
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleTone(ILcom/nuance/xt9/input/ChineseInput;I)Z
    .locals 6
    .parameter "tone"
    .parameter "chineseInput"
    .parameter "kdbId"

    .prologue
    const/4 v5, 0x0

    .line 197
    const/4 v3, 0x1

    .line 198
    .local v3, success:Z
    invoke-virtual {p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFStringLength()I

    move-result v2

    .line 199
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->getBMPFString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 201
    .local v0, chr:C
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {p2, p3, v4, v5}, Lcom/nuance/xt9/input/ChineseInput;->processKey(III)Z

    move-result v4

    and-int/2addr v3, v4

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v0           #chr:C
    :cond_0
    invoke-virtual {p2, p1}, Lcom/nuance/xt9/input/ChineseInput;->addTone(I)Z

    move-result v4

    and-int/2addr v3, v4

    .line 204
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :goto_1
    iput v4, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    .line 206
    return v3

    :cond_1
    move v4, v5

    .line 204
    goto :goto_1
.end method

.method public handleTouchSelectWord(ILcom/nuance/xt9/input/CandidatesListView;Lcom/nuance/xt9/input/ChineseInputView;Lcom/nuance/xt9/input/ChineseInput;)V
    .locals 1
    .parameter "index"
    .parameter "currCandidate"
    .parameter "inputView"
    .parameter "chineseInput"

    .prologue
    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    .line 102
    invoke-virtual {p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->clearBuffer()V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lcom/nuance/xt9/input/ChineseInputView;->handleSelectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 104
    invoke-virtual {p4}, Lcom/nuance/xt9/input/ChineseInput;->clearAllKeys()Z

    .line 105
    return-void
.end method

.method public removeLastBMPFString()V
    .locals 4

    .prologue
    .line 75
    iget-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 76
    .local v0, length:I
    if-lez v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    .line 79
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/nuance/xt9/input/BPMFSpellBuffer;->clearBuffer()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mSlectionMode:I

    .line 92
    return-void
.end method

.method public setBMPFString(Ljava/lang/String;)V
    .locals 0
    .parameter "bpmfstr"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mBPMFString:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setOnSpellBufferClearedListener(Lcom/nuance/xt9/input/BPMFSpellBuffer$OnSpellBufferClearedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/nuance/xt9/input/BPMFSpellBuffer;->mListener:Lcom/nuance/xt9/input/BPMFSpellBuffer$OnSpellBufferClearedListener;

    .line 220
    return-void
.end method
