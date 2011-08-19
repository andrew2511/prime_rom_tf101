.class public Lcom/android/email/AttachmentInfo;
.super Ljava/lang/Object;
.source "AttachmentInfo.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final mAccountKey:J

.field public final mAllowInstall:Z

.field public final mAllowSave:Z

.field public final mAllowView:Z

.field public final mContentType:Ljava/lang/String;

.field public final mDenyFlags:I

.field public final mId:J

.field public final mName:Ljava/lang/String;

.field public final mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/AttachmentInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 19
    .parameter "context"
    .parameter "id"
    .parameter "size"
    .parameter "fileName"
    .parameter "mimeType"
    .parameter "accountKey"

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-nez p6, :cond_0

    .line 111
    const-string p6, "Unknown"

    .line 114
    :cond_0
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mSize:J

    .line 115
    invoke-static/range {p6 .. p7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    .line 117
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mId:J

    .line 118
    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    .line 119
    const/4 v7, 0x1

    .line 120
    .local v7, canView:Z
    const/4 v6, 0x1

    .line 121
    .local v6, canSave:Z
    const/4 v5, 0x0

    .line 122
    .local v5, canInstall:Z
    const/4 v8, 0x0

    .line 125
    .local v8, denyFlags:I
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v15

    if-nez v15, :cond_1

    .line 126
    const/4 v6, 0x0

    .line 130
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    move-object v15, v0

    sget-object v16, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static/range {v15 .. v16}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    move-object v15, v0

    sget-object v16, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static/range {v15 .. v16}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 134
    :cond_2
    const/4 v7, 0x0

    .line 138
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, extension:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    sget-object v15, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    invoke-static {v15, v9}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 142
    const/4 v7, 0x0

    .line 143
    const/4 v6, 0x0

    .line 144
    or-int/lit8 v8, v8, 0x1

    .line 148
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 149
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    sget-object v15, Lcom/android/emailcommon/utility/AttachmentUtilities;->INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    invoke-static {v15, v9}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "install_non_market_apps"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    const/4 v15, 0x1

    move v14, v15

    .line 158
    .local v14, sideloadEnabled:Z
    :goto_0
    const/4 v7, 0x0

    .line 159
    and-int/2addr v6, v14

    .line 160
    if-nez v14, :cond_9

    .line 161
    or-int/lit8 v8, v8, 0x8

    .line 165
    :goto_1
    move v5, v7

    .line 170
    .end local v14           #sideloadEnabled:Z
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    move-wide v15, v0

    const-wide/32 v17, 0x500000

    cmp-long v15, v15, v17

    if-lez v15, :cond_6

    .line 171
    invoke-static/range {p1 .. p1}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v12

    .line 172
    .local v12, networkType:I
    const/4 v15, 0x1

    if-eq v12, v15, :cond_6

    .line 173
    const/4 v7, 0x0

    .line 174
    const/4 v6, 0x0

    .line 175
    or-int/lit8 v8, v8, 0x2

    .line 181
    .end local v12           #networkType:I
    :cond_6
    invoke-static/range {p6 .. p6}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    const/4 v15, 0x1

    move v11, v15

    .line 183
    .local v11, isAsusSupported:Z
    :goto_2
    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/AttachmentInfo;->getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v10

    .line 184
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 185
    .local v13, pm:Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    invoke-virtual {v13, v10, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 186
    .local v4, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_7

    if-nez v11, :cond_7

    .line 187
    const/4 v7, 0x0

    .line 188
    const/4 v6, 0x0

    .line 189
    or-int/lit8 v8, v8, 0x4

    .line 192
    :cond_7
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    .line 193
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    .line 194
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/AttachmentInfo;->mAllowInstall:Z

    .line 195
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/AttachmentInfo;->mDenyFlags:I

    .line 196
    return-void

    .line 153
    .end local v4           #activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #isAsusSupported:Z
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    :cond_8
    const/4 v15, 0x0

    move v14, v15

    goto :goto_0

    .line 163
    .restart local v14       #sideloadEnabled:Z
    :cond_9
    or-int/lit8 v8, v8, 0x10

    goto :goto_1

    .line 181
    .end local v14           #sideloadEnabled:Z
    :cond_a
    const/4 v15, 0x0

    move v11, v15

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "context"
    .parameter "c"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;J)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)V
    .locals 10
    .parameter "context"
    .parameter "info"

    .prologue
    .line 103
    iget-wide v2, p2, Lcom/android/email/AttachmentInfo;->mId:J

    iget-wide v4, p2, Lcom/android/email/AttachmentInfo;->mSize:J

    iget-object v6, p2, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    iget-wide v8, p2, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;J)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 10
    .parameter "context"
    .parameter "attachment"

    .prologue
    .line 93
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    iget-object v6, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iget-wide v8, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;J)V

    .line 95
    return-void
.end method


# virtual methods
.method public getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 206
    iget-wide v2, p0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {p2, p3, v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v0

    .line 207
    .local v0, contentUri:Landroid/net/Uri;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 211
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const v2, 0x80001

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    return-object v1
.end method

.method public isEligibleForDownload()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Attachment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
