.class Lcom/google/android/gm/BaseConversationListActivity$1;
.super Ljava/lang/Object;
.source "BaseConversationListActivity.java"

# interfaces
.implements Lcom/google/android/gm/AccountHelper$AccountResultsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BaseConversationListActivity;->updateAccountsInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BaseConversationListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BaseConversationListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/gm/BaseConversationListActivity$1;->this$0:Lcom/google/android/gm/BaseConversationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec([Landroid/accounts/Account;)V
    .locals 3
    .parameter "accounts"

    .prologue
    .line 260
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity$1;->this$0:Lcom/google/android/gm/BaseConversationListActivity;

    invoke-static {v2, p1}, Lcom/google/android/gm/BaseConversationListActivity;->access$000(Lcom/google/android/gm/BaseConversationListActivity;[Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/String;

    .line 262
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 263
    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity$1;->this$0:Lcom/google/android/gm/BaseConversationListActivity;

    iget-object v2, v2, Lcom/google/android/gm/BaseConversationListActivity;->mAccountNames:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity$1;->this$0:Lcom/google/android/gm/BaseConversationListActivity;

    iput-object v0, v2, Lcom/google/android/gm/BaseConversationListActivity;->mAccountNames:[Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lcom/google/android/gm/BaseConversationListActivity$1;->this$0:Lcom/google/android/gm/BaseConversationListActivity;

    invoke-virtual {v2}, Lcom/google/android/gm/BaseConversationListActivity;->onAccountsUpdated()V

    .line 271
    .end local v0           #accountNames:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_1
    return-void
.end method
