.class Lcom/layar/UserInviteFriendsActivity$1;
.super Ljava/lang/Object;
.source "UserInviteFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/UserInviteFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserInviteFriendsActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserInviteFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserInviteFriendsActivity$1;->this$0:Lcom/layar/UserInviteFriendsActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 79
    const/4 v4, 0x0

    .line 81
    .local v4, invitesSelected:I
    :try_start_0
    new-instance v7, Lorg/json/JSONStringer;

    invoke-direct {v7}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v7}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v6

    .line 83
    .local v6, jsonBuilder:Lorg/json/JSONStringer;
    iget-object v7, p0, Lcom/layar/UserInviteFriendsActivity$1;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-static {v7}, Lcom/layar/UserInviteFriendsActivity;->access$0(Lcom/layar/UserInviteFriendsActivity;)Lcom/layar/adapters/InviteFriendAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/layar/adapters/InviteFriendAdapter;->getGroupCount()I

    move-result v0

    .line 84
    .local v0, countGroups:I
    const/4 v2, 0x0

    .local v2, g:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 94
    invoke-virtual {v6}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 96
    new-instance v7, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;

    iget-object v8, p0, Lcom/layar/UserInviteFriendsActivity$1;->this$0:Lcom/layar/UserInviteFriendsActivity;

    iget-object v9, p0, Lcom/layar/UserInviteFriendsActivity$1;->this$0:Lcom/layar/UserInviteFriendsActivity;

    .line 97
    invoke-virtual {v6}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 96
    invoke-direct {v7, v8, v9, v4, v10}, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;-><init>(Lcom/layar/UserInviteFriendsActivity;Landroid/content/Context;ILjava/lang/String;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    .line 97
    invoke-virtual {v7, v8}, Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    .end local v0           #countGroups:I
    .end local v2           #g:I
    .end local v6           #jsonBuilder:Lorg/json/JSONStringer;
    :goto_1
    return-void

    .line 85
    .restart local v0       #countGroups:I
    .restart local v2       #g:I
    .restart local v6       #jsonBuilder:Lorg/json/JSONStringer;
    :cond_0
    iget-object v7, p0, Lcom/layar/UserInviteFriendsActivity$1;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-static {v7}, Lcom/layar/UserInviteFriendsActivity;->access$0(Lcom/layar/UserInviteFriendsActivity;)Lcom/layar/adapters/InviteFriendAdapter;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/layar/adapters/InviteFriendAdapter;->getChildrenCount(I)I

    move-result v1

    .line 86
    .local v1, countItems:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-lt v3, v1, :cond_1

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    iget-object v7, p0, Lcom/layar/UserInviteFriendsActivity$1;->this$0:Lcom/layar/UserInviteFriendsActivity;

    invoke-static {v7}, Lcom/layar/UserInviteFriendsActivity;->access$0(Lcom/layar/UserInviteFriendsActivity;)Lcom/layar/adapters/InviteFriendAdapter;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lcom/layar/adapters/InviteFriendAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/layar/data/user/Friend;

    .line 88
    .local v5, item:Lcom/layar/data/user/Friend;
    iget-boolean v7, v5, Lcom/layar/data/user/Friend;->sendInvite:Z

    if-eqz v7, :cond_2

    .line 89
    iget-object v7, v5, Lcom/layar/data/user/Friend;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 86
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 98
    .end local v0           #countGroups:I
    .end local v1           #countItems:I
    .end local v2           #g:I
    .end local v3           #i:I
    .end local v5           #item:Lcom/layar/data/user/Friend;
    .end local v6           #jsonBuilder:Lorg/json/JSONStringer;
    :catch_0
    move-exception v7

    goto :goto_1
.end method
