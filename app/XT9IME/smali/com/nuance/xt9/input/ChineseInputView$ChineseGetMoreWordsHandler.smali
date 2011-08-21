.class Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/ChineseInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChineseGetMoreWordsHandler"
.end annotation


# instance fields
.field mCIV:Lcom/nuance/xt9/input/ChineseInputView;

.field final synthetic this$0:Lcom/nuance/xt9/input/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/ChineseInputView;Lcom/nuance/xt9/input/ChineseInputView;)V
    .locals 0
    .parameter
    .parameter "civ"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;->this$0:Lcom/nuance/xt9/input/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;->mCIV:Lcom/nuance/xt9/input/ChineseInputView;

    .line 72
    return-void
.end method


# virtual methods
.method public requestMoreWords()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseInputView$ChineseGetMoreWordsHandler;->mCIV:Lcom/nuance/xt9/input/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/ChineseInputView;->postAddMoreSuggestions()V

    .line 75
    return-void
.end method
