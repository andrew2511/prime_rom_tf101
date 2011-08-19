.class public Lcom/google/android/voicesearch/actioneditor/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;
    }
.end annotation


# static fields
.field public static final ADDRESS_INDEX:I = 0x2

.field public static final ADDRESS_TYPE_EMAIL:I = 0x1

.field public static final ADDRESS_TYPE_PHONE:I = 0x0

.field public static final ID_INDEX:I = 0x0

.field public static final LABEL_INDEX:I = 0x4

.field public static final NAME_INDEX:I = 0x1

.field protected static final PROJECTION:[Ljava/lang/String; = null

.field protected static final SORT_ORDER:Ljava/lang/String; = "is_primary DESC, times_contacted DESC, display_name"

.field public static final TYPE_INDEX:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAtCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getFilterUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContactAlternates(Landroid/content/Context;Ljava/lang/String;I)[Lcom/google/android/voicesearch/actions/Contact;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    if-nez p1, :cond_1

    const-string v1, ""

    .line 77
    :goto_0
    invoke-static {p2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getFilterUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    sget-object v2, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->PROJECTION:[Ljava/lang/String;

    const-string v5, "is_primary DESC, times_contacted DESC, display_name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 84
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 85
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 86
    invoke-static {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAtCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/voicesearch/actions/Contact;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/voicesearch/actions/Contact;

    return-object p0

    .line 92
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getContactAtCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 164
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    new-instance v4, Lcom/google/android/voicesearch/actions/Contact;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method

.method public static getContactRepresentation(Landroid/content/Context;Lcom/google/android/voicesearch/actions/Contact;Z)Landroid/text/SpannableString;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getTypeString()Ljava/lang/String;

    .line 215
    if-eqz p2, :cond_0

    .line 216
    const-string v1, "%s (%s) %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 222
    :goto_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0b000c

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 227
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0b000d

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v1, v4, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 230
    return-object v2

    .line 219
    :cond_0
    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getContactRepresentations(Landroid/content/Context;[Lcom/google/android/voicesearch/actions/Contact;)[Landroid/text/SpannableString;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 188
    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 190
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 187
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_1
    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactRepresentation(Landroid/content/Context;Lcom/google/android/voicesearch/actions/Contact;Z)Landroid/text/SpannableString;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/SpannableString;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/SpannableString;

    return-object p0
.end method

.method public static getContactWithAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/voicesearch/actions/Contact;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 109
    if-nez p1, :cond_0

    move-object v0, v3

    .line 129
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 115
    sget-object v2, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->PROJECTION:[Ljava/lang/String;

    const-string v5, "is_primary DESC, times_contacted DESC, display_name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 117
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 118
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 119
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 120
    invoke-static {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAtCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto :goto_0

    .line 118
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    .line 129
    goto :goto_0

    .line 126
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getFilterUri(I)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static sortForType([Lcom/google/android/voicesearch/actions/Contact;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;

    invoke-direct {v0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 155
    return-void
.end method
