.class final Lcom/google/android/gm/ConversationListFragment$ActiveCommand;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/google/android/gm/CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActiveCommand"
.end annotation


# instance fields
.field private mCommandId:I

.field private mListener:Lcom/google/android/gm/CommandListener;

.field mUndoOperation:Lcom/google/android/gm/UndoOperation;


# direct methods
.method public constructor <init>(ILcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter "itemId"
    .parameter "singleCommandListener"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;->mCommandId:I

    .line 103
    iput-object p2, p0, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;->mListener:Lcom/google/android/gm/CommandListener;

    .line 104
    return-void
.end method


# virtual methods
.method public onCommandAccepted(I)V
    .locals 1
    .parameter "commandId"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;->mListener:Lcom/google/android/gm/CommandListener;

    invoke-interface {v0, p1}, Lcom/google/android/gm/CommandListener;->onCommandAccepted(I)V

    .line 111
    return-void
.end method

.method public onCommandCompleted()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;->mListener:Lcom/google/android/gm/CommandListener;

    iget v1, p0, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;->mCommandId:I

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;->mUndoOperation:Lcom/google/android/gm/UndoOperation;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/CommandListener;->onCommandCompleted(ILcom/google/android/gm/UndoOperation;)V

    .line 107
    return-void
.end method

.method public onCommandCompleted(ILcom/google/android/gm/UndoOperation;)V
    .locals 0
    .parameter "commandId"
    .parameter "undoOp"

    .prologue
    .line 114
    iput-object p2, p0, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;->mUndoOperation:Lcom/google/android/gm/UndoOperation;

    .line 115
    return-void
.end method
