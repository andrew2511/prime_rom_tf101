.class public Landroid/provider/Calendar$CalendarsEntity;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Calendar$SyncColumns;
.implements Landroid/provider/Calendar$CalendarsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarsEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Calendar$CalendarsEntity$EntityIteratorImpl;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 248
    const-string v0, "content://com.android.calendar/calendar_entities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$CalendarsEntity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    return-void
.end method

.method public static newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)Landroid/content/EntityIterator;
    .registers 3
    .parameter "cursor"
    .parameter "provider"

    .prologue
    .line 257
    new-instance v0, Landroid/provider/Calendar$CalendarsEntity$EntityIteratorImpl;

    invoke-direct {v0, p0, p1}, Landroid/provider/Calendar$CalendarsEntity$EntityIteratorImpl;-><init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V

    return-object v0
.end method

.method public static newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;
    .registers 3
    .parameter "cursor"
    .parameter "resolver"

    .prologue
    .line 252
    new-instance v0, Landroid/provider/Calendar$CalendarsEntity$EntityIteratorImpl;

    invoke-direct {v0, p0, p1}, Landroid/provider/Calendar$CalendarsEntity$EntityIteratorImpl;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    return-object v0
.end method
