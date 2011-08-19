.class public Lcom/android/commands/monkey/MonkeySourceRandomScript;
.super Ljava/lang/Object;
.source "MonkeySourceRandomScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# instance fields
.field private mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

.field private mRandom:Ljava/util/Random;

.field private mRandomizeScript:Z

.field private mScriptCount:I

.field private mScriptSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/commands/monkey/MonkeySourceScript;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

.field private mVerbose:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V
    .registers 26
    .parameter "setupFileName"
    .parameter
    .parameter "throttle"
    .parameter "randomizeThrottle"
    .parameter "random"
    .parameter "profileWaitTime"
    .parameter "deviceSleepTime"
    .parameter "randomizeScript"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;JZ",
            "Ljava/util/Random;",
            "JJZ)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, scriptFileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mVerbose:I

    .line 30
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    .line 36
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 41
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    .line 43
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    .line 57
    if-eqz p1, :cond_31

    .line 58
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceScript;

    move-object/from16 v3, p6

    move-object v4, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v2 .. v11}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 60
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 63
    :cond_31
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .local v4, fileName:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceScript;

    move-object/from16 v3, p6

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v2 .. v11}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 68
    .end local v4           #fileName:Ljava/lang/String;
    :cond_56
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandom:Ljava/util/Random;

    .line 69
    move/from16 v0, p11

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V
    .registers 23
    .parameter
    .parameter "throttle"
    .parameter "randomizeThrottle"
    .parameter "random"
    .parameter "profileWaitTime"
    .parameter "deviceSleepTime"
    .parameter "randomizeScript"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;JZ",
            "Ljava/util/Random;",
            "JJZ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, scriptFileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    .line 85
    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 96
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    if-nez v2, :cond_19

    .line 97
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 98
    .local v1, numSources:I
    if-ne v1, v3, :cond_29

    .line 99
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceScript;

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 110
    .end local v1           #numSources:I
    :cond_19
    :goto_19
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    if-eqz v2, :cond_54

    .line 111
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceScript;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    move-result-object v0

    .line 112
    .local v0, nextEvent:Lcom/android/commands/monkey/MonkeyEvent;
    if-nez v0, :cond_27

    .line 113
    iput-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    :cond_27
    move-object v2, v0

    .line 117
    .end local v0           #nextEvent:Lcom/android/commands/monkey/MonkeyEvent;
    :goto_28
    return-object v2

    .line 100
    .restart local v1       #numSources:I
    :cond_29
    if-le v1, v3, :cond_19

    .line 101
    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    if-eqz v2, :cond_40

    .line 102
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceScript;

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    goto :goto_19

    .line 104
    :cond_40
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    rem-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceScript;

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    .line 105
    iget v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    goto :goto_19

    .end local v1           #numSources:I
    :cond_54
    move-object v2, v4

    .line 117
    goto :goto_28
.end method

.method public setVerbose(I)V
    .registers 5
    .parameter "verbose"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mVerbose:I

    .line 128
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    if-eqz v2, :cond_b

    .line 129
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    invoke-virtual {v2, p1}, Lcom/android/commands/monkey/MonkeySourceScript;->setVerbose(I)V

    .line 132
    :cond_b
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeySourceScript;

    .line 133
    .local v1, source:Lcom/android/commands/monkey/MonkeySourceScript;
    invoke-virtual {v1, p1}, Lcom/android/commands/monkey/MonkeySourceScript;->setVerbose(I)V

    goto :goto_11

    .line 135
    .end local v1           #source:Lcom/android/commands/monkey/MonkeySourceScript;
    :cond_21
    return-void
.end method

.method public validate()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceScript;->validate()Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v3

    .line 155
    :goto_e
    return v2

    .line 149
    :cond_f
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeySourceScript;

    .line 150
    .local v1, source:Lcom/android/commands/monkey/MonkeySourceScript;
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeySourceScript;->validate()Z

    move-result v2

    if-nez v2, :cond_15

    move v2, v3

    .line 151
    goto :goto_e

    .line 155
    .end local v1           #source:Lcom/android/commands/monkey/MonkeySourceScript;
    :cond_29
    const/4 v2, 0x1

    goto :goto_e
.end method
