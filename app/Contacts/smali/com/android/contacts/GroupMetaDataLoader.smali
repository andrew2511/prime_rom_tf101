.class public final Lcom/android/contacts/GroupMetaDataLoader;
.super Landroid/content/CursorLoader;
.source "GroupMetaDataLoader.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "auto_add"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "favorites"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 44
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    const-string v4, "account_type NOT NULL AND account_name NOT NULL"

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
