.class public Lcom/android/deskclock/RepeatPreference;
.super Landroid/preference/ListPreference;
.source "RepeatPreference.java"


# instance fields
.field private mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

.field private mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v2, Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-direct {v2, v3}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v2, p0, Lcom/android/deskclock/RepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 34
    new-instance v2, Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-direct {v2, v3}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v2, p0, Lcom/android/deskclock/RepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 39
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, weekdays:[Ljava/lang/String;
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    aget-object v2, v1, v5

    aput-object v2, v0, v3

    aget-object v2, v1, v6

    aput-object v2, v0, v4

    aget-object v2, v1, v7

    aput-object v2, v0, v5

    const/4 v2, 0x5

    aget-object v2, v1, v2

    aput-object v2, v0, v6

    const/4 v2, 0x6

    aget-object v2, v1, v2

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const/4 v3, 0x7

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    aget-object v3, v1, v4

    aput-object v3, v0, v2

    .line 49
    .local v0, values:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/deskclock/RepeatPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/deskclock/RepeatPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/RepeatPreference;)Lcom/android/deskclock/Alarm$DaysOfWeek;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/deskclock/RepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    return-object v0
.end method


# virtual methods
.method public getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/RepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/deskclock/RepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    iget-object v1, p0, Lcom/android/deskclock/RepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 57
    iget-object v0, p0, Lcom/android/deskclock/RepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {p0}, Lcom/android/deskclock/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/RepeatPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/android/deskclock/RepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/RepeatPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/deskclock/RepeatPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/deskclock/RepeatPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 67
    .local v1, entryValues:[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/deskclock/RepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v2

    new-instance v3, Lcom/android/deskclock/RepeatPreference$1;

    invoke-direct {v3, p0}, Lcom/android/deskclock/RepeatPreference$1;-><init>(Lcom/android/deskclock/RepeatPreference;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    return-void
.end method

.method public setDaysOfWeek(Lcom/android/deskclock/Alarm$DaysOfWeek;)V
    .locals 2
    .parameter "dow"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/deskclock/RepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 79
    iget-object v0, p0, Lcom/android/deskclock/RepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/deskclock/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/RepeatPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method
