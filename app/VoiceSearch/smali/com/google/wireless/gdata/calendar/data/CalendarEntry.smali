.class public Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "CalendarEntry.java"


# static fields
.field public static final ACCESS_EDITOR:B = 0x3t

.field public static final ACCESS_FREEBUSY:B = 0x2t

.field public static final ACCESS_NONE:B = 0x0t

.field public static final ACCESS_OWNER:B = 0x4t

.field public static final ACCESS_READ:B = 0x1t

.field public static final ACCESS_ROOT:B = 0x5t


# instance fields
.field private accessLevel:B

.field private alternateLink:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private hidden:Z

.field private selected:Z

.field private timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 44
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    .line 46
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    .line 49
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    .line 50
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-super {p0}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    .line 60
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    .line 61
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    .line 64
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    .line 65
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public getAccessLevel()B
    .locals 1

    .prologue
    .line 72
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    return v0
.end method

.method public getAlternateLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    return v0
.end method

.method public setAccessLevel(B)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-byte p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    .line 80
    return-void
.end method

.method public setAlternateLink(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    .line 122
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    .line 136
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 153
    const-string v0, "ACCESS LEVEL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    const-string v0, "ALTERNATE LINK"

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "COLOR"

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "HIDDEN: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    const-string v0, "SELECTED: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    const-string v0, "TIMEZONE"

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method
