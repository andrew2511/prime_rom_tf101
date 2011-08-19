.class Lcom/google/android/talk/AccountListAdapter$1;
.super Ljava/lang/Object;
.source "AccountListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountListAdapter;

.field final synthetic val$accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field final synthetic val$isOnline:Z

.field final synthetic val$position:I

.field final synthetic val$signInButton:Landroid/widget/Button;

.field final synthetic val$spinner:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountListAdapter;ZLandroid/widget/Button;Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/talk/AccountListAdapter$1;->this$0:Lcom/google/android/talk/AccountListAdapter;

    iput-boolean p2, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$isOnline:Z

    iput-object p3, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$signInButton:Landroid/widget/Button;

    iput-object p4, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-object p5, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$spinner:Landroid/view/View;

    iput p6, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$isOnline:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$signInButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    .line 183
    iget-object v0, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$spinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AccountListAdapter$1;->this$0:Lcom/google/android/talk/AccountListAdapter;

    iget v1, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$position:I

    iget-boolean v2, p0, Lcom/google/android/talk/AccountListAdapter$1;->val$isOnline:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x7c

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/google/android/talk/AccountListAdapter;->access$000(Lcom/google/android/talk/AccountListAdapter;II)V

    .line 186
    return-void

    .line 185
    :cond_1
    const/16 v2, 0x7b

    goto :goto_0
.end method
