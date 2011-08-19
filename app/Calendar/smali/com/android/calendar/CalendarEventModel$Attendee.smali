.class public Lcom/android/calendar/CalendarEventModel$Attendee;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarEventModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attendee"
.end annotation


# instance fields
.field public mEmail:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "email"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 59
    :goto_0
    return v2

    .line 49
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/CalendarEventModel$Attendee;

    if-nez v2, :cond_2

    move v2, v4

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    move-object v1, v0

    .line 56
    .local v1, other:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 57
    goto :goto_0

    :cond_3
    move v2, v5

    .line 59
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
