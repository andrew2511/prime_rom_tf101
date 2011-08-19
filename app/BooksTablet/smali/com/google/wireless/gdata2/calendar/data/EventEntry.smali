.class public Lcom/google/wireless/gdata2/calendar/data/EventEntry;
.super Lcom/google/wireless/gdata2/data/Entry;
.source "EventEntry.java"


# static fields
.field public static final STATUS_CANCELED:B = 0x2t

.field public static final STATUS_CONFIRMED:B = 0x1t

.field public static final STATUS_TENTATIVE:B = 0x0t

.field public static final TRANSPARENCY_OPAQUE:B = 0x0t

.field public static final TRANSPARENCY_TRANSPARENT:B = 0x1t

.field public static final VISIBILITY_CONFIDENTIAL:B = 0x1t

.field public static final VISIBILITY_DEFAULT:B = 0x0t

.field public static final VISIBILITY_PRIVATE:B = 0x2t

.field public static final VISIBILITY_PUBLIC:B = 0x3t


# instance fields
.field private attendees:Ljava/util/Vector;

.field private calendarUrl:Ljava/lang/String;

.field private commentsUri:Ljava/lang/String;

.field private extendedProperties:Ljava/util/Hashtable;

.field private guestsCanInviteOthers:Z

.field private guestsCanModify:Z

.field private guestsCanSeeGuests:Z

.field private organizer:Ljava/lang/String;

.field private originalEventId:Ljava/lang/String;

.field private originalEventStartTime:Ljava/lang/String;

.field private quickAdd:Z

.field private recurrence:Ljava/lang/String;

.field private reminders:Ljava/util/Vector;

.field private sendEventNotifications:Z

.field private status:B

.field private transparency:B

.field private uid:Ljava/lang/String;

.field private visibility:B

.field private whens:Ljava/util/Vector;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    .line 68
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 69
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 70
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 71
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    .line 73
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 74
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 75
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 76
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 77
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    .line 79
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 80
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 85
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 86
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->uid:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public addAttendee(Lcom/google/wireless/gdata2/calendar/data/Who;)V
    .locals 1
    .parameter "attendee"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method public addReminder(Lcom/google/wireless/gdata2/calendar/data/Reminder;)V
    .locals 1
    .parameter "reminder"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public addWhen(Lcom/google/wireless/gdata2/calendar/data/When;)V
    .locals 1
    .parameter "when"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    .line 101
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 102
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 103
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 104
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 105
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 106
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 107
    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 108
    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 109
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 111
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 112
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 113
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 118
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 119
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->uid:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public clearAttendees()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 221
    return-void
.end method

.method public clearExtendedProperties()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 320
    return-void
.end method

.method public clearReminders()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 263
    return-void
.end method

.method public clearWhens()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 233
    return-void
.end method

.method public getAttendees()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    return-object v0
.end method

.method public getCalendarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getExtendedProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 300
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 301
    const/4 v1, 0x0

    .line 307
    :goto_0
    return-object v1

    .line 303
    :cond_0
    const/4 v0, 0x0

    .line 304
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #value:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #value:Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 307
    goto :goto_0
.end method

.method public getFirstWhen()Lcom/google/wireless/gdata2/calendar/data/When;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 247
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/wireless/gdata2/calendar/data/When;

    move-object v0, p0

    goto :goto_0
.end method

.method public getGuestsCanInviteOthers()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    return v0
.end method

.method public getGuestsCanModify()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    return v0
.end method

.method public getGuestsCanSeeGuests()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    return v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEventStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getReminders()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    return-object v0
.end method

.method public getSendEventNotifications()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    return v0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    .line 141
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    return v0
.end method

.method public getTransparency()B
    .locals 1

    .prologue
    .line 155
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()B
    .locals 1

    .prologue
    .line 169
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    return v0
.end method

.method public getWhens()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    return-object v0
.end method

.method public isQuickAdd()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    return v0
.end method

.method public setCalendarUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "calendarUrl"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setCommentsUri(Ljava/lang/String;)V
    .locals 0
    .parameter "commentsUri"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setGuestsCanInviteOthers(Z)V
    .locals 0
    .parameter "guestsCanInviteOthers"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 201
    return-void
.end method

.method public setGuestsCanModify(Z)V
    .locals 0
    .parameter "guestsCanModify"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    .line 193
    return-void
.end method

.method public setGuestsCanSeeGuests(Z)V
    .locals 0
    .parameter "guestsCanSeeGuests"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 209
    return-void
.end method

.method public setOrganizer(Ljava/lang/String;)V
    .locals 0
    .parameter "organizer"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setOriginalEventId(Ljava/lang/String;)V
    .locals 0
    .parameter "originalEventId"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setOriginalEventStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter "originalEventStartTime"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setQuickAdd(Z)V
    .locals 0
    .parameter "quickAdd"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    .line 336
    return-void
.end method

.method public setRecurrence(Ljava/lang/String;)V
    .locals 0
    .parameter "recurrence"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setSendEventNotifications(Z)V
    .locals 0
    .parameter "sendEventNotifications"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 185
    return-void
.end method

.method public setStatus(B)V
    .locals 0
    .parameter "status"

    .prologue
    .line 148
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    .line 149
    return-void
.end method

.method public setTransparency(B)V
    .locals 0
    .parameter "transparency"

    .prologue
    .line 162
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    .line 163
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->uid:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setVisibility(B)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 176
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    .line 177
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0
    .parameter "where"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 14
    .parameter "sb"

    .prologue
    const-string v13, "true"

    const-string v12, "false"

    const-string v11, "\n"

    .line 367
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 368
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STATUS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->status:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string v9, "RECURRENCE"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VISIBILITY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->visibility:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRANSPARENCY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->transparency:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    const-string v9, "ORIGINAL_EVENT_ID"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v9, "ORIGINAL_START_TIME"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QUICK_ADD: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->quickAdd:Z

    if-eqz v10, :cond_0

    const-string v10, "true"

    move-object v10, v13

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEND_EVENT_NOTIFICATIONS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->sendEventNotifications:Z

    if-eqz v10, :cond_1

    const-string v10, "true"

    move-object v10, v13

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_MODIFY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanModify:Z

    if-eqz v10, :cond_2

    const-string v10, "true"

    move-object v10, v13

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_INVITE_OTHERS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    if-eqz v10, :cond_3

    const-string v10, "true"

    move-object v10, v13

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_SEE_GUESTS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    if-eqz v10, :cond_4

    const-string v10, "true"

    move-object v10, v13

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const-string v9, "ORGANIZER"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 384
    .local v8, whos:Ljava/util/Enumeration;
    :goto_5
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 385
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 386
    .local v7, who:Lcom/google/wireless/gdata2/calendar/data/Who;
    invoke-virtual {v7, p1}, Lcom/google/wireless/gdata2/calendar/data/Who;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_5

    .line 375
    .end local v7           #who:Lcom/google/wireless/gdata2/calendar/data/Who;
    .end local v8           #whos:Ljava/util/Enumeration;
    :cond_0
    const-string v10, "false"

    move-object v10, v12

    goto/16 :goto_0

    .line 376
    :cond_1
    const-string v10, "false"

    move-object v10, v12

    goto/16 :goto_1

    .line 378
    :cond_2
    const-string v10, "false"

    move-object v10, v12

    goto/16 :goto_2

    .line 379
    :cond_3
    const-string v10, "false"

    move-object v10, v12

    goto :goto_3

    .line 380
    :cond_4
    const-string v10, "false"

    move-object v10, v12

    goto :goto_4

    .line 389
    .restart local v8       #whos:Ljava/util/Enumeration;
    :cond_5
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 390
    .local v4, times:Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 391
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/gdata2/calendar/data/When;

    .line 392
    .local v6, when:Lcom/google/wireless/gdata2/calendar/data/When;
    invoke-virtual {v6, p1}, Lcom/google/wireless/gdata2/calendar/data/When;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_6

    .line 394
    .end local v6           #when:Lcom/google/wireless/gdata2/calendar/data/When;
    :cond_6
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    if-eqz v9, :cond_7

    .line 395
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 396
    .local v0, alarms:Ljava/util/Enumeration;
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 397
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 398
    .local v3, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    invoke-virtual {v3, p1}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_7

    .line 401
    .end local v0           #alarms:Ljava/util/Enumeration;
    .end local v3           #reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    :cond_7
    const-string v9, "WHERE"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->where:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v9, "COMMENTS"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-eqz v9, :cond_8

    .line 404
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 405
    .local v1, entryNames:Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 406
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 407
    .local v2, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 408
    .local v5, value:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 414
    .end local v1           #entryNames:Ljava/util/Enumeration;
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_8
    const-string v9, "CALENDAR_URL"

    iget-object v10, p0, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->calendarUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata2/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method
