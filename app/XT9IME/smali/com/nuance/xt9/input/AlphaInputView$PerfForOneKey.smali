.class final Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;
.super Ljava/lang/Object;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PerfForOneKey"
.end annotation


# instance fields
.field mCh:C

.field mSpellTime:J

.field mWordCount:I


# direct methods
.method public constructor <init>(C)V
    .locals 0
    .parameter "ch"

    .prologue
    .line 2107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2108
    iput-char p1, p0, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;->mCh:C

    .line 2109
    return-void
.end method
