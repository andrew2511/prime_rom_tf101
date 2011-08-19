.class public final Landroid/provider/ContactsContract$Data;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/data"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FOR_EXPORT_ONLY:Ljava/lang/String; = "for_export_only"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3148
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 13
    .parameter "resolver"
    .parameter "dataUri"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3190
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v2, v1

    const-string v0, "lookup"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3194
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 3196
    .local v10, lookupUri:Landroid/net/Uri;
    if-eqz v8, :cond_33

    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3197
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3198
    .local v6, contactId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3199
    .local v9, lookupKey:Ljava/lang/String;
    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_3a

    move-result-object v0

    .line 3202
    if-eqz v8, :cond_32

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3204
    .end local v6           #contactId:J
    .end local v9           #lookupKey:Ljava/lang/String;
    :cond_32
    :goto_32
    return-object v0

    .line 3202
    :cond_33
    if-eqz v8, :cond_38

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_38
    move-object v0, v10

    .line 3204
    goto :goto_32

    .line 3202
    :catchall_3a
    move-exception v0

    if-eqz v8, :cond_40

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_40
    throw v0
.end method
