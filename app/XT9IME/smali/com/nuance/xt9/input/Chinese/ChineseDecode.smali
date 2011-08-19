.class public Lcom/nuance/xt9/input/Chinese/ChineseDecode;
.super Ljava/lang/Object;
.source "ChineseDecode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native addUserWords(Ljava/lang/String;Lcom/nuance/xt9/input/Chinese/ChineseCandidates;)I
.end method

.method public native adjustFrequency(Lcom/nuance/xt9/input/Chinese/ChineseCandidates;)V
.end method

.method public native buildNewPY(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native freeChineseDecode()V
.end method

.method public native getLeftPY(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public native getNextWords(Lcom/nuance/xt9/input/Chinese/ChineseCandidates;I)Lcom/nuance/xt9/input/Chinese/ChineseCandidates;
.end method

.method public native getWordsFromPY(Ljava/lang/String;)Lcom/nuance/xt9/input/Chinese/ChineseCandidates;
.end method

.method public native init()V
.end method

.method public native loadBigramFromBuffer([BI)V
.end method

.method public native loadPYFromBuffer([BI)V
.end method

.method public native loadUnigramFromBuffer([BI)V
.end method

.method public native loadUserFreqFromBuffer([BI)V
.end method

.method public native loadUserLexFromBuffer([BI)V
.end method

.method public native saveUserFreqIntoFile(Ljava/lang/String;)V
.end method

.method public native saveUserLexiconIntoFile(Ljava/lang/String;)V
.end method
