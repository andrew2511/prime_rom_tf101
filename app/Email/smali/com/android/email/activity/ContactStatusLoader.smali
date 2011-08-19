.class public Lcom/android/email/activity/ContactStatusLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ContactStatusLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/email/activity/ContactStatusLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field static final PHOTO_PROJECTION:[Ljava/lang/String;

.field static final PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEmailAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "photo_id"

    aput-object v1, v0, v2

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/ContactStatusLoader;->PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String;

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data15"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/ContactStatusLoader;->PHOTO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "emailAddress"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object p1, p0, Lcom/android/email/activity/ContactStatusLoader;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/email/activity/ContactStatusLoader;->mEmailAddress:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/ContactStatusLoader$Result;
    .locals 11
    .parameter "context"
    .parameter "emailAddress"

    .prologue
    .line 100
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/activity/ContactStatusLoader;->PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 104
    .local p1, c:Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 105
    sget-object p0, Lcom/android/email/activity/ContactStatusLoader$Result;->UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;

    .line 139
    .end local p0
    .end local p1           #c:Landroid/database/Cursor;
    :goto_0
    return-object p0

    .line 110
    .restart local p0
    .restart local p1       #c:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    sget-object p0, Lcom/android/email/activity/ContactStatusLoader$Result;->UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local p0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 113
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 114
    .local v2, photoId:J
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 116
    .local v0, presenceStatus:I
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 120
    invoke-static {v0}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v10

    .line 123
    .local v10, presenceStatusResId:I
    const/4 v0, 0x0

    .line 124
    .local v0, photo:Landroid/graphics/Bitmap;
    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    .line 125
    .end local p1           #c:Landroid/database/Cursor;
    sget-object p1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/email/activity/ContactStatusLoader;->PHOTO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/android/emailcommon/utility/Utility;->getFirstRowBlob(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[B)[B

    .end local v2           #photoId:J
    move-result-object p1

    .line 128
    .local p1, photoData:[B
    if-eqz p1, :cond_2

    .line 130
    const/4 v2, 0x0

    :try_start_2
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p1

    .line 138
    .end local v0           #photo:Landroid/graphics/Bitmap;
    .local p1, photo:Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    invoke-static {p0, v1}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 139
    .local p0, lookupUri:Landroid/net/Uri;
    new-instance v0, Lcom/android/email/activity/ContactStatusLoader$Result;

    invoke-direct {v0, p1, v10, p0}, Lcom/android/email/activity/ContactStatusLoader$Result;-><init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V

    move-object p0, v0

    goto :goto_0

    .line 116
    .end local v10           #presenceStatusResId:I
    .local p0, context:Landroid/content/Context;
    .local p1, c:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    .end local p0           #context:Landroid/content/Context;
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    .line 131
    .restart local v0       #photo:Landroid/graphics/Bitmap;
    .restart local v10       #presenceStatusResId:I
    .restart local p0       #context:Landroid/content/Context;
    .local p1, photoData:[B
    :catch_0
    move-exception p1

    .line 132
    .local p1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoding bitmap failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object p1, v0

    .end local v0           #photo:Landroid/graphics/Bitmap;
    .local p1, photo:Landroid/graphics/Bitmap;
    goto :goto_1
.end method


# virtual methods
.method public loadInBackground()Lcom/android/email/activity/ContactStatusLoader$Result;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/email/activity/ContactStatusLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/ContactStatusLoader;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/email/activity/ContactStatusLoader;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/ContactStatusLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->loadInBackground()Lcom/android/email/activity/ContactStatusLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->stopLoading()V

    .line 156
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->cancelLoad()Z

    .line 145
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->forceLoad()V

    .line 146
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->cancelLoad()Z

    .line 151
    return-void
.end method
