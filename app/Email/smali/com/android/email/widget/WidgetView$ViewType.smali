.class enum Lcom/android/email/widget/WidgetView$ViewType;
.super Ljava/lang/Enum;
.source "WidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/widget/WidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/email/widget/WidgetView$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/email/widget/WidgetView$ViewType;

.field public static final enum TYPE_ACCOUNT_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

.field public static final enum TYPE_ALL_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

.field public static final enum TYPE_ALL_STARRED:Lcom/android/email/widget/WidgetView$ViewType;

.field public static final enum TYPE_ALL_UNREAD:Lcom/android/email/widget/WidgetView$ViewType;


# instance fields
.field private final mIsPerAccount:Z

.field private final mSelection:Ljava/lang/String;

.field private final mTitleResource:I

.field private final mUseUnreadCount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/android/email/widget/WidgetView$ViewType;

    const-string v1, "TYPE_ALL_UNREAD"

    const-string v4, "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

    const v5, 0x7f08016d

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/email/widget/WidgetView$ViewType;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    sput-object v0, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ALL_UNREAD:Lcom/android/email/widget/WidgetView$ViewType;

    .line 45
    new-instance v3, Lcom/android/email/widget/WidgetView$ViewType;

    const-string v4, "TYPE_ALL_STARRED"

    const-string v7, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

    const v8, 0x7f08016e

    move v5, v10

    move v6, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/email/widget/WidgetView$ViewType;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    sput-object v3, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ALL_STARRED:Lcom/android/email/widget/WidgetView$ViewType;

    .line 46
    new-instance v3, Lcom/android/email/widget/WidgetView$ViewType;

    const-string v4, "TYPE_ALL_INBOX"

    const-string v7, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

    const v8, 0x7f08016c

    move v5, v11

    move v6, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/email/widget/WidgetView$ViewType;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    sput-object v3, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ALL_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    .line 47
    new-instance v3, Lcom/android/email/widget/WidgetView$ViewType$1;

    const-string v4, "TYPE_ACCOUNT_INBOX"

    const-string v7, "accountKey=? AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

    move v5, v12

    move v6, v10

    move v8, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/email/widget/WidgetView$ViewType$1;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    sput-object v3, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ACCOUNT_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/email/widget/WidgetView$ViewType;

    sget-object v1, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ALL_UNREAD:Lcom/android/email/widget/WidgetView$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ALL_STARRED:Lcom/android/email/widget/WidgetView$ViewType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ALL_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ACCOUNT_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/android/email/widget/WidgetView$ViewType;->$VALUES:[Lcom/android/email/widget/WidgetView$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "isPerAccount"
    .parameter "selection"
    .parameter "titleResource"
    .parameter "useUnreadCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-boolean p3, p0, Lcom/android/email/widget/WidgetView$ViewType;->mIsPerAccount:Z

    .line 65
    iput-object p4, p0, Lcom/android/email/widget/WidgetView$ViewType;->mSelection:Ljava/lang/String;

    .line 66
    iput p5, p0, Lcom/android/email/widget/WidgetView$ViewType;->mTitleResource:I

    .line 67
    iput-boolean p6, p0, Lcom/android/email/widget/WidgetView$ViewType;->mUseUnreadCount:Z

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLjava/lang/String;IZLcom/android/email/widget/WidgetView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/android/email/widget/WidgetView$ViewType;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/widget/WidgetView$ViewType;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/email/widget/WidgetView$ViewType;->mIsPerAccount:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/widget/WidgetView$ViewType;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/email/widget/WidgetView$ViewType;->mUseUnreadCount:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/email/widget/WidgetView$ViewType;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/android/email/widget/WidgetView$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/email/widget/WidgetView$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/android/email/widget/WidgetView$ViewType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/email/widget/WidgetView$ViewType;->$VALUES:[Lcom/android/email/widget/WidgetView$ViewType;

    invoke-virtual {v0}, [Lcom/android/email/widget/WidgetView$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/widget/WidgetView$ViewType;

    return-object v0
.end method


# virtual methods
.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/widget/WidgetView$ViewType;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs(J)[Ljava/lang/String;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/email/widget/WidgetView$ViewType;->mTitleResource:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
