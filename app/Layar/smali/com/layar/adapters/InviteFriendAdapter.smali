.class public Lcom/layar/adapters/InviteFriendAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "InviteFriendAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final GROUP_FRIENDS:I = 0x0

.field private static final GROUP_INVITE:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFriendsOnLayar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/user/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final mFriendsOnSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/user/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroups:[Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/user/Friend;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/user/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, friendsOnLayar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/user/Friend;>;"
    .local p3, friendsOnSource:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/user/Friend;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/layar/adapters/InviteFriendAdapter;->mContext:Landroid/content/Context;

    .line 29
    iget-object v2, p0, Lcom/layar/adapters/InviteFriendAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/adapters/InviteFriendAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object p2, p0, Lcom/layar/adapters/InviteFriendAdapter;->mFriendsOnLayar:Ljava/util/ArrayList;

    .line 32
    iput-object p3, p0, Lcom/layar/adapters/InviteFriendAdapter;->mFriendsOnSource:Ljava/util/ArrayList;

    .line 34
    const v2, 0x7f090111

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, friendString:Ljava/lang/String;
    const v2, 0x7f090112

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, inviteString:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 37
    const-string v4, "%num%"

    iget-object v5, p0, Lcom/layar/adapters/InviteFriendAdapter;->mFriendsOnLayar:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 38
    aput-object v1, v2, v3

    .line 36
    iput-object v2, p0, Lcom/layar/adapters/InviteFriendAdapter;->mGroups:[Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/layar/adapters/InviteFriendAdapter;->mFriendsOnLayar:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/layar/adapters/InviteFriendAdapter;->mFriendsOnSource:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 53
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 66
    if-nez p4, :cond_0

    .line 67
    iget-object v2, p0, Lcom/layar/adapters/InviteFriendAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030035

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 68
    new-instance v0, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;-><init>(Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;)V

    .line 69
    .local v0, holder:Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;
    const v2, 0x7f07008f

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f07004c

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 72
    invoke-virtual {p4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/layar/adapters/InviteFriendAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/data/user/Friend;

    .line 79
    .local v1, item:Lcom/layar/data/user/Friend;
    iget-object v2, v0, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/layar/data/user/Friend;->fullname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, v0, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-boolean v3, v1, Lcom/layar/data/user/Friend;->sendInvite:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    iput-object v1, v0, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;->item:Lcom/layar/data/user/Friend;

    .line 82
    return-object p4

    .line 75
    .end local v0           #holder:Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;
    .end local v1           #item:Lcom/layar/data/user/Friend;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/layar/adapters/InviteFriendAdapter;->mFriendsOnLayar:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 89
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/layar/adapters/InviteFriendAdapter;->mFriendsOnSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/layar/adapters/InviteFriendAdapter;->mGroups:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/layar/adapters/InviteFriendAdapter;->mGroups:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 106
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/layar/adapters/InviteFriendAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030033

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/layar/adapters/InviteFriendAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;

    .line 130
    .local v0, holder:Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;
    iget-object v1, v0, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;->item:Lcom/layar/data/user/Friend;

    .line 131
    .local v1, item:Lcom/layar/data/user/Friend;
    iget-boolean v2, v1, Lcom/layar/data/user/Friend;->sendInvite:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/layar/data/user/Friend;->sendInvite:Z

    .line 133
    iget-object v2, v0, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-boolean v3, v1, Lcom/layar/data/user/Friend;->sendInvite:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    return-void

    .line 131
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
