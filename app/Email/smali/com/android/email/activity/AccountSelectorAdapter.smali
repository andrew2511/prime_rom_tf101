.class public Lcom/android/email/activity/AccountSelectorAdapter;
.super Landroid/widget/CursorAdapter;
.source "AccountSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final RESULT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "emailAddress"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "emailAddress"

    aput-object v1, v0, v4

    const-string v1, "UNREAD_COUNT"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->RESULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 84
    iput-object p1, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    .line 85
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->RESULT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static createLoader(Landroid/content/Context;)Landroid/content/Loader;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;

    invoke-direct {v0, p0}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getAccountDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 132
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAccountEmailAddress(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 137
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 152
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "c"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getAccountUnreadCount(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 142
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(Landroid/database/Cursor;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAccountUnreadCount(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 157
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 116
    const v1, 0x7f0f000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    .local v0, textView:Landroid/widget/TextView;
    invoke-static {p3}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 90
    iget-object v6, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040003

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 92
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0f000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    .local v1, displayNameView:Landroid/widget/TextView;
    const v6, 0x7f0f000c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    .local v3, emailAddressView:Landroid/widget/TextView;
    const v6, 0x7f0f000d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 96
    .local v4, unreadCountView:Landroid/widget/TextView;
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, displayName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, emailAddress:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :goto_0
    iget-object v6, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(I)I

    move-result v7

    invoke-static {v6, v7, v8}, Lcom/android/email/UiUtilities;->getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-object v5

    .line 105
    :cond_0
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
