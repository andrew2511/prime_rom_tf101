.class final Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;
.super Ljava/lang/Object;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PerfForOneWord"
.end annotation


# instance fields
.field mPerfKeys:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;",
            ">;"
        }
    .end annotation
.end field

.field mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "word"

    .prologue
    .line 2116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2114
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;->mPerfKeys:Ljava/util/LinkedList;

    .line 2117
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;->mWord:Ljava/lang/String;

    .line 2118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;->mWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2119
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;->mPerfKeys:Ljava/util/LinkedList;

    new-instance v2, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;->mWord:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v2, v3}, Lcom/nuance/xt9/input/AlphaInputView$PerfForOneKey;-><init>(C)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2121
    :cond_0
    return-void
.end method
