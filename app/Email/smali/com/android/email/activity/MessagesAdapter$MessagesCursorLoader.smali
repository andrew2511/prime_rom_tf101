.class Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessagesCursorLoader"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMailboxId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    const/4 v4, 0x0

    .line 218
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v6, "timeStamp DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    .line 222
    iput-wide p2, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    .line 223
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/Utility;->buildMailboxIdSelection(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->setSelection(Ljava/lang/String;)V

    .line 231
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
