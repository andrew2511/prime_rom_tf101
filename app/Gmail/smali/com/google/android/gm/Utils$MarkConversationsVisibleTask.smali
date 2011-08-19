.class Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarkConversationsVisibleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

.field private final mHasFocus:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V
    .locals 0
    .parameter "cursor"
    .parameter "hasFocus"

    .prologue
    .line 1564
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1565
    iput-object p1, p0, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 1566
    iput-boolean p2, p0, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;->mHasFocus:Z

    .line 1567
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1560
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget-boolean v1, p0, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;->mHasFocus:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->setContentsVisibleToUser(Z)V

    .line 1574
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
