.class public Lcom/google/android/voicesearch/actions/SetAlarmAction;
.super Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
.source "SetAlarmAction.java"


# static fields
.field private static final ACTION_SET_ALARM:Ljava/lang/String; = "android.intent.action.SET_ALARM"

.field private static final ALARM_EDITOR_CLOCK_VERSION:I = 0xcb

.field private static final CLOCK_ACTIVITY:Ljava/lang/String; = "com.android.deskclock.AlarmClock"

.field private static final CLOCK_AUTHORITY:Ljava/lang/String; = "com.google.android.deskclock.alarmprovider"

.field private static final CLOCK_PACKAGE:Ljava/lang/String; = "com.google.android.deskclock"

.field private static final CLOCK_PATH:Ljava/lang/String; = "add"

.field private static final CLOCK_QUERY_PARAM_HOUR:Ljava/lang/String; = "hour"

.field private static final CLOCK_QUERY_PARAM_LABEL:Ljava/lang/String; = "message"

.field private static final CLOCK_QUERY_PARAM_MINUTES:Ljava/lang/String; = "minutes"

.field private static final CLOCK_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/SetAlarmAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEPRECATED_CLOCK_VERSION:I = 0xc9

.field private static final EXTRA_HOUR:Ljava/lang/String; = "android.intent.extra.alarm.HOUR"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "android.intent.extra.alarm.MESSAGE"

.field private static final EXTRA_MINUTES:Ljava/lang/String; = "android.intent.extra.alarm.MINUTES"

.field public static final SET_ALARM_TIME:Ljava/lang/String; = "time"

.field private static final STRING_RESOURCE_PREFIX:Ljava/lang/String; = "set_alarm"

.field private static sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

.field private static sDeprecatedClockInstalled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.deskclock.alarmprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "add"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->CLOCK_URI:Landroid/net/Uri;

    .line 128
    new-instance v0, Lcom/google/android/voicesearch/actions/SetAlarmAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const/16 v2, 0xf

    const/4 v3, 0x0

    const-string v4, "set_alarm"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->setUp(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/TextValue;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xc

    .line 107
    const/16 v2, 0xf

    const/4 v3, 0x0

    const-string v4, "set_alarm"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v7, p2}, Ljava/util/Calendar;->add(II)V

    .line 110
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->setUp(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;)V

    .line 111
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/SetAlarmAction$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/SetAlarmAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static determineClockCapabilites(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "com.google.android.deskclock"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->getInstalledPackageVersion(Ljava/lang/String;)I

    move-result v0

    .line 168
    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    .line 169
    const/16 v1, 0xcb

    if-lt v0, v1, :cond_2

    move v0, v3

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    move v1, v2

    .line 168
    goto :goto_1

    :cond_2
    move v0, v2

    .line 169
    goto :goto_2
.end method

.method private setUp(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v6

    .line 141
    invoke-interface {v6}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "_slot_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "time"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string v1, "_slot_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v4, "label"

    invoke-static {p1, v0, v1, v3, v4}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 149
    new-instance v0, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v1, "time"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->addPrimarySlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 151
    new-instance v0, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v1, "label"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->addAdditionalSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 154
    new-instance v0, Lcom/google/android/voicesearch/actions/TimeValue;

    invoke-direct {v0, p2, p3}, Lcom/google/android/voicesearch/actions/TimeValue;-><init>(II)V

    .line 156
    const-string v1, "time"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 157
    const-string v0, "label"

    invoke-virtual {p0, v0, p4}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 159
    invoke-interface {v6}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->determineClockCapabilites(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V

    .line 161
    return-void
.end method


# virtual methods
.method public getCompletionToast(Landroid/content/Context;)Landroid/widget/Toast;
    .locals 2
    .parameter

    .prologue
    .line 266
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f09072c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->CLOCK_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 250
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    .line 252
    :cond_0
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/TimeValue;

    .line 253
    const-string v1, "label"

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/TextValue;

    .line 254
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 255
    const-string v2, "hour"

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/TimeValue;->getHourOfDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string v2, "minutes"

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/TimeValue;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    if-eqz p0, :cond_1

    .line 259
    const-string v0, "message"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 261
    goto :goto_0
.end method

.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 174
    const/high16 v0, 0x7f02

    return v0
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.intent.action.SET_ALARM"

    goto :goto_0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 282
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    .line 284
    :cond_0
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/TimeValue;

    .line 285
    const-string v1, "label"

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/TextValue;

    .line 286
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 287
    const-string v2, "android.intent.extra.alarm.HOUR"

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/TimeValue;->getHourOfDay()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v2, "android.intent.extra.alarm.MINUTES"

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/TimeValue;->getMinute()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    if-eqz p0, :cond_1

    .line 291
    const-string v0, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 293
    goto :goto_0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 179
    const v0, 0x7f020001

    return v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<b>"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getActionString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v0, "</b>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/TimeValue;

    .line 194
    if-nez v0, :cond_2

    move-object v0, v3

    .line 195
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 196
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_0
    const-string v0, "label"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/TextValue;

    .line 201
    if-nez p0, :cond_3

    move-object v0, v3

    .line 202
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 203
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/actions/TimeValue;->asString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 184
    const v0, 0x7f020002

    return v0
.end method

.method public getShortcutIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "android.intent.action.MAIN"

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.intent.action.SET_ALARM"

    goto :goto_0
.end method

.method public getShortcutIntentComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 306
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.deskclock"

    const-string v2, "com.android.deskclock.AlarmClock"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortcutTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->buildListTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsupportedActionDialogMarketUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 332
    const v0, 0x7f090778

    invoke-static {p1, v0}, Lcom/google/android/voicesearch/StringUtils;->getStringResourceOrGservicesOverride(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsupportedActionDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 327
    const v0, 0x7f090771

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEditorNeeded(Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->hasLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 227
    sput-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    .line 228
    sput-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

    .line 230
    invoke-static {p2}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->determineClockCapabilites(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V

    .line 231
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    return-void
.end method
