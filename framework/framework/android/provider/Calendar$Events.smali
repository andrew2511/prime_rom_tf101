.class public final Landroid/provider/Calendar$Events;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Calendar$SyncColumns;
.implements Landroid/provider/Calendar$AccountColumns;
.implements Landroid/provider/Calendar$EventsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field private static final ATTENDEES_COLUMNS:[Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = ""

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;

.field private static final FETCH_ENTRY_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 963
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v1, v0, v2

    const-string v1, "_sync_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/Calendar$Events;->FETCH_ENTRY_COLUMNS:[Ljava/lang/String;

    .line 966
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v2

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v3

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "attendeeType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "attendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Calendar$Events;->ATTENDEES_COLUMNS:[Ljava/lang/String;

    .line 996
    const-string v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 999
    const-string v0, "content://com.android.calendar/deleted_events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$Events;->DELETED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractValue(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 985
    invoke-virtual {p0, p1}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v0

    .line 987
    .local v0, property:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_b

    .line 988
    invoke-virtual {v0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 990
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "cr"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 974
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 979
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_10

    const-string v0, ""

    move-object v5, v0

    :goto_8
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_10
    move-object v5, p3

    goto :goto_8
.end method
