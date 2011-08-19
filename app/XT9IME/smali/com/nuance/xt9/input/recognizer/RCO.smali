.class public Lcom/nuance/xt9/input/recognizer/RCO;
.super Ljava/lang/Object;
.source "RCO.java"


# instance fields
.field public mRCO:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/xt9/input/recognizer/RCO;->mRCO:J

    .line 13
    return-void
.end method


# virtual methods
.method public native AddWordToRCO(Ljava/lang/String;)Z
.end method

.method public native AddWordsToRCO([Ljava/lang/String;I)Z
.end method

.method public native CreateFromTextLexicon(Ljava/lang/String;Lcom/nuance/xt9/input/recognizer/KeySet;Lcom/nuance/xt9/input/recognizer/KeyboardInfo;)V
.end method

.method public native CreateFromTextLexicon([BLcom/nuance/xt9/input/recognizer/KeySet;Lcom/nuance/xt9/input/recognizer/KeyboardInfo;)V
.end method

.method public native Destroy()V
.end method

.method public native IsWordActive(Ljava/lang/String;)Z
.end method

.method public native IsWordExistInRCO(Ljava/lang/String;)Z
.end method

.method public native LoadFromBuffer([B)V
.end method

.method public native LoadFromFile(Ljava/lang/String;)V
.end method

.method public native Recognize(Lcom/nuance/xt9/input/recognizer/InputSignal;Ljava/lang/Object;)Lcom/nuance/xt9/input/recognizer/ResultSet;
.end method

.method public native Remap(Lcom/nuance/xt9/input/recognizer/KeySet;Lcom/nuance/xt9/input/recognizer/KeyboardInfo;)Z
.end method

.method public native RemoveWordFromLexicon(Ljava/lang/String;)Z
.end method

.method public native SetParameters(IIIIII)V
.end method

.method public native SetRCOMode(I)V
.end method

.method public native SetWordActive(Ljava/lang/String;Z)Z
.end method

.method public native Store(Ljava/lang/String;)V
.end method
