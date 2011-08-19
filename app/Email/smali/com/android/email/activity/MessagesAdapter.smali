.class Lcom/android/email/activity/MessagesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;,
        Lcom/android/email/activity/MessagesAdapter$Callback;
    }
.end annotation


# static fields
.field static final MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private final mSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mShowColorChips:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;)V
    .locals 3
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    .line 92
    invoke-static {p1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 93
    iput-object p2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    .line 94
    return-void
.end method

.method private changeFavoriteIcon(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 0
    .parameter "view"
    .parameter "isFavorite"

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    .line 202
    return-void
.end method

.method public static createLoader(Landroid/content/Context;J)Landroid/content/Loader;
    .locals 1
    .parameter "context"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private updateSelected(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 3
    .parameter "itemView"
    .parameter "newSelected"

    .prologue
    .line 175
    if-eqz p2, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItem;ZI)V

    .line 183
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    move-object v3, v0

    .line 133
    .local v3, itemView:Lcom/android/email/activity/MessageListItem;
    invoke-virtual {v3, p0}, Lcom/android/email/activity/MessageListItem;->bindViewInit(Lcom/android/email/activity/MessagesAdapter;)V

    .line 136
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    .line 137
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    .line 138
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 139
    .local v1, accountId:J
    iput-wide v1, v3, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    .line 140
    const/4 v4, 0x6

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    :goto_0
    iput-boolean v4, v3, Lcom/android/email/activity/MessageListItem;->mRead:Z

    .line 141
    const/4 v4, 0x7

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    :goto_1
    iput-boolean v4, v3, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 142
    const/16 v4, 0x9

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move v4, v7

    :goto_2
    iput-boolean v4, v3, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 144
    const/16 v4, 0x8

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v7

    :goto_3
    iput-boolean v4, v3, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 145
    const/4 v4, 0x5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    .line 146
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/email/activity/MessageListItem;->mSender:Ljava/lang/String;

    .line 147
    const/16 v4, 0xa

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    .line 148
    const/4 v4, 0x4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    .line 149
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    .line 150
    iget-boolean v4, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v4, v1, v2}, Lcom/android/email/ResourceHelper;->getAccountColorPaint(J)Landroid/graphics/Paint;

    move-result-object v4

    :goto_4
    iput-object v4, v3, Lcom/android/email/activity/MessageListItem;->mColorChipPaint:Landroid/graphics/Paint;

    .line 152
    return-void

    :cond_0
    move v4, v6

    .line 140
    goto :goto_0

    :cond_1
    move v4, v6

    .line 141
    goto :goto_1

    :cond_2
    move v4, v6

    .line 142
    goto :goto_2

    :cond_3
    move v4, v6

    .line 144
    goto :goto_3

    .line 150
    :cond_4
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public getSelectedSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public isSelected(Lcom/android/email/activity/MessageListItem;)Z
    .locals 3
    .parameter "itemView"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    .line 109
    .local v1, checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v6, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-wide v3, v0, v2

    .line 110
    .local v3, l:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v3           #l:J
    :cond_0
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 157
    new-instance v0, Lcom/android/email/activity/MessageListItem;

    invoke-direct {v0, p1}, Lcom/android/email/activity/MessageListItem;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, item:Lcom/android/email/activity/MessageListItem;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListItem;->setVisibility(I)V

    .line 159
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    .line 98
    .local v1, checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    new-array v0, v5, [J

    .line 99
    .local v0, checkedarray:[J
    const/4 v2, 0x0

    .line 100
    .local v2, i:I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 101
    .local v4, l:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v0, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v4           #l:Ljava/lang/Long;
    :cond_0
    const-string v5, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 105
    return-void
.end method

.method public setShowColorChips(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    .line 119
    return-void
.end method

.method public toggleSelected(Lcom/android/email/activity/MessageListItem;)V
    .locals 1
    .parameter "itemView"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessagesAdapter;->updateSelected(Lcom/android/email/activity/MessageListItem;Z)V

    .line 164
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 1
    .parameter "itemView"
    .parameter "newFavorite"

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->changeFavoriteIcon(Lcom/android/email/activity/MessageListItem;Z)V

    .line 195
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItem;Z)V

    .line 198
    :cond_0
    return-void
.end method
