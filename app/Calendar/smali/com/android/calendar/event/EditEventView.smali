.class public Lcom/android/calendar/event/EditEventView;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditEventView$CalendarsAdapter;,
        Lcom/android/calendar/event/EditEventView$DateClickListener;,
        Lcom/android/calendar/event/EditEventView$DateListener;,
        Lcom/android/calendar/event/EditEventView$TimeClickListener;,
        Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;,
        Lcom/android/calendar/event/EditEventView$TimeListener;
    }
.end annotation


# static fields
.field private static DEFAULT_DOMAIN:Ljava/lang/String;

.field private static mF:Ljava/util/Formatter;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static sRecipientFilters:[Landroid/text/InputFilter;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mAddAttendeesButton:Landroid/widget/ImageButton;

.field mAddAttendeesListener:Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;

.field private mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

.field mAllDayCheckBox:Landroid/widget/CheckBox;

.field mAttendeesGroup:Landroid/view/View;

.field mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

.field mAttendeesPane:Landroid/view/View;

.field mAttendeesView:Lcom/android/calendar/event/AttendeesView;

.field mCalendarSelectorGroup:Landroid/view/View;

.field mCalendarStaticGroup:Landroid/view/View;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field mCalendarsSpinner:Landroid/widget/Spinner;

.field mColorChip:Landroid/view/View;

.field private mDefaultReminderMinutes:I

.field mDescriptionGroup:Landroid/view/View;

.field mDescriptionTextView:Landroid/widget/TextView;

.field private mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

.field mEditOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mEditViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailValidator:Lcom/android/common/Rfc822Validator;

.field mEndDateButton:Landroid/widget/Button;

.field mEndDateHome:Landroid/widget/TextView;

.field mEndHomeGroup:Landroid/view/View;

.field private mEndTime:Landroid/text/format/Time;

.field mEndTimeButton:Landroid/widget/Button;

.field mEndTimeHome:Landroid/widget/TextView;

.field private mEventRecurrence:Landroid/pim/EventRecurrence;

.field private mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

.field mLoadingMessage:Landroid/widget/TextView;

.field mLocationGroup:Landroid/view/View;

.field mLocationTextView:Landroid/widget/TextView;

.field private mModel:Lcom/android/calendar/CalendarEventModel;

.field private mModification:I

.field private mNoCalendarsDialog:Landroid/app/AlertDialog;

.field mOrganizerGroup:Landroid/view/View;

.field private mOriginalPadding:[I

.field private mRecurrenceIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReminderAddButton:Landroid/widget/ImageButton;

.field private mReminderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRemindersContainer:Landroid/widget/LinearLayout;

.field mRemindersGroup:Landroid/view/View;

.field mRepeatsSpinner:Landroid/widget/Spinner;

.field mResponseGroup:Landroid/view/View;

.field mResponseRadioGroup:Landroid/widget/RadioGroup;

.field private mSaveAfterQueryComplete:Z

.field mScrollView:Landroid/widget/ScrollView;

.field mStartDateButton:Landroid/widget/Button;

.field mStartDateHome:Landroid/widget/TextView;

.field mStartHomeGroup:Landroid/view/View;

.field private mStartTime:Landroid/text/format/Time;

.field mStartTimeButton:Landroid/widget/Button;

.field mStartTimeHome:Landroid/widget/TextView;

.field private mTimezone:Ljava/lang/String;

.field private mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

.field mTimezoneButton:Landroid/widget/Button;

.field private mTimezoneDialog:Landroid/app/AlertDialog;

.field mTimezoneLabel:Landroid/widget/TextView;

.field mTimezoneTextView:Landroid/widget/TextView;

.field mTitleTextView:Landroid/widget/TextView;

.field mTransparencySpinner:Landroid/widget/Spinner;

.field private mView:Landroid/view/View;

.field mViewOnlyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mVisibilitySpinner:Landroid/widget/Spinner;

.field mWhenView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    .line 175
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    .line 1401
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/common/Rfc822InputFilter;

    invoke-direct {v2}, Lcom/android/common/Rfc822InputFilter;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EditEventView;->sRecipientFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 163
    iput-boolean v3, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    .line 168
    iput v3, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    .line 170
    new-instance v0, Landroid/pim/EventRecurrence;

    invoke-direct {v0}, Landroid/pim/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    .line 787
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    .line 788
    iput-object p2, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    .line 789
    iput-object p3, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    .line 791
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/EditEventView;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 794
    const v0, 0x7f0e0033

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    .line 795
    const v0, 0x7f0e0034

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    .line 798
    const v0, 0x7f0e003b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    .line 799
    const v0, 0x7f0e0007

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    .line 800
    const v0, 0x7f0e0057

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    .line 801
    const v0, 0x7f0e005a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    .line 802
    const v0, 0x7f0e0051

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneLabel:Landroid/widget/TextView;

    .line 803
    const v0, 0x7f0e0042

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    .line 804
    const v0, 0x7f0e0049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    .line 805
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mWhenView:Landroid/widget/TextView;

    .line 806
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f0e004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneTextView:Landroid/widget/TextView;

    .line 807
    const v0, 0x7f0e0043

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    .line 808
    const v0, 0x7f0e004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    .line 809
    const v0, 0x7f0e0052

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    .line 810
    const v0, 0x7f0e0046

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    .line 811
    const v0, 0x7f0e0045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    .line 812
    const v0, 0x7f0e004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    .line 813
    const v0, 0x7f0e004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    .line 814
    const v0, 0x7f0e0055

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    .line 815
    const v0, 0x7f0e005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    .line 816
    const v0, 0x7f0e0063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTransparencySpinner:Landroid/widget/Spinner;

    .line 817
    const v0, 0x7f0e0066

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mVisibilitySpinner:Landroid/widget/Spinner;

    .line 818
    const v0, 0x7f0e003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    .line 819
    const v0, 0x7f0e003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    .line 820
    const v0, 0x7f0e005d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    .line 821
    const v0, 0x7f0e0067

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseGroup:Landroid/view/View;

    .line 822
    const v0, 0x7f0e006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOrganizerGroup:Landroid/view/View;

    .line 823
    const v0, 0x7f0e0075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    .line 824
    const v0, 0x7f0e0037

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesPane:Landroid/view/View;

    .line 825
    const v0, 0x7f0e0056

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    .line 826
    const v0, 0x7f0e0058

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    .line 827
    const v0, 0x7f0e0044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    .line 828
    const v0, 0x7f0e004b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    .line 830
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 831
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 832
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 833
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 834
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    aput v1, v0, v3

    .line 835
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    aput v2, v0, v1

    .line 836
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    aput v2, v0, v1

    .line 837
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mOriginalPadding:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    aput v2, v0, v1

    .line 838
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f0e003e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f0e004e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f0e0053

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f0e0061

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f0e0064

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f0e0040

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f0e0047

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f0e0050

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    const v1, 0x7f0e0070

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    const v0, 0x7f0e0069

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    .line 856
    const v0, 0x7f0e005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 858
    const v0, 0x7f0e0074

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddAttendeesButton:Landroid/widget/ImageButton;

    .line 859
    new-instance v0, Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Lcom/android/calendar/event/EditEventView$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddAttendeesListener:Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;

    .line 860
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddAttendeesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddAttendeesButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAddAttendeesListener:Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    const v0, 0x7f0e0076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/AttendeesView;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    .line 865
    invoke-static {p1, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 866
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    .line 867
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    .line 868
    new-instance v0, Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 870
    const v0, 0x7f0e0038

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mColorChip:Landroid/view/View;

    .line 873
    invoke-virtual {p0, v4}, Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 874
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/EditEventView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/EditEventView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->addReminder()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/event/EditEventView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateRepeats()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/event/EditEventView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->showTimezoneDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/event/EditEventView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/event/EditEventView;)Lcom/android/calendar/TimezoneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    return-object v0
.end method

.method private addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1092
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1096
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1097
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1100
    :cond_2
    instance-of v1, p2, Landroid/widget/RadioGroup;

    if-eqz v1, :cond_3

    .line 1101
    move-object v0, p2

    check-cast v0, Landroid/widget/RadioGroup;

    move-object v1, v0

    .line 1102
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 1103
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    check-cast p0, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1106
    :cond_3
    instance-of v1, p2, Landroid/widget/Spinner;

    if-eqz v1, :cond_4

    .line 1107
    check-cast p2, Landroid/widget/Spinner;

    .line 1108
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1109
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1114
    :cond_4
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1115
    check-cast p2, Landroid/view/ViewGroup;

    .line 1116
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1117
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 1118
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/calendar/event/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 1117
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private addReminder()V
    .locals 7

    .prologue
    .line 1372
    iget v0, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    if-nez v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderLabels:Ljava/util/ArrayList;

    const/16 v6, 0xa

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    .line 1379
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 1380
    return-void

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderLabels:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    goto :goto_0
.end method

.method private checkForAttendeeListVisibility(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    .line 1607
    if-eqz p1, :cond_0

    .line 1609
    :try_start_0
    const-string v0, "_sync_account_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1610
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1611
    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->isPCSyncAccount(Ljava/lang/String;)Z

    move-result v0

    .line 1612
    const-string v1, "Chimng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setModel- isPCSyncAccount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    if-eqz v0, :cond_1

    .line 1615
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f0e0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f0e0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1617
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddAttendeesButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1627
    :cond_0
    :goto_0
    return-void

    .line 1619
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f0e0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1620
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f0e0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1621
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddAttendeesButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    const-string v1, "EditEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has exception when check AttendeeList\'s visibility. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fillModelFromUI()Z
    .locals 15

    .prologue
    .line 681
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v10, :cond_0

    .line 682
    const/4 v10, 0x0

    .line 782
    :goto_0
    return v10

    .line 684
    :cond_0
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/calendar/event/EditEventView;->mReminderValues:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Lcom/android/calendar/event/EventViewUtils;->reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v10, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    .line 686
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v10, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 687
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 688
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    iput-boolean v11, v10, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 689
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 690
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 691
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v10, v10, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 692
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 694
    :cond_1
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v10, v10, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 695
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 698
    :cond_2
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v10}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v10

    invoke-static {v10}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v9

    .line 700
    .local v9, status:I
    if-eqz v9, :cond_3

    .line 701
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v9, v10, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 704
    :cond_3
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v10}, Lcom/android/calendar/event/AttendeesView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_7

    .line 705
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v10}, Lcom/android/calendar/event/AttendeesView;->getChildCount()I

    move-result v8

    .line 706
    .local v8, size:I
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v10, v10, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->clear()V

    .line 707
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v8, :cond_7

    .line 708
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v10, v3}, Lcom/android/calendar/event/AttendeesView;->getItem(I)Lcom/android/calendar/CalendarEventModel$Attendee;

    move-result-object v0

    .line 709
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    if-eqz v0, :cond_4

    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v10, v3}, Lcom/android/calendar/event/AttendeesView;->isMarkAsRemoved(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 707
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 686
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v3           #i:I
    .end local v8           #size:I
    .end local v9           #status:I
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 712
    .restart local v0       #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .restart local v3       #i:I
    .restart local v8       #size:I
    .restart local v9       #status:I
    :cond_6
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v10, v0}, Lcom/android/calendar/CalendarEventModel;->addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    goto :goto_3

    .line 717
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v3           #i:I
    .end local v8           #size:I
    :cond_7
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v10, v10, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v10, :cond_8

    .line 718
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 719
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 720
    .local v1, calendarCursorPosition:I
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v10, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 721
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, defaultCalendar:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v11, "preference_defaultCalendar"

    invoke-static {v10, v11, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v2, v10, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 726
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v2, v10, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 727
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 731
    .end local v1           #calendarCursorPosition:I
    .end local v2           #defaultCalendar:Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v10, v10, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v10, :cond_b

    .line 734
    const-string v10, "UTC"

    iput-object v10, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 735
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v11, 0x0

    iput v11, v10, Landroid/text/format/Time;->hour:I

    .line 736
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v11, 0x0

    iput v11, v10, Landroid/text/format/Time;->minute:I

    .line 737
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v11, 0x0

    iput v11, v10, Landroid/text/format/Time;->second:I

    .line 738
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 739
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 741
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v11, 0x0

    iput v11, v10, Landroid/text/format/Time;->hour:I

    .line 742
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v11, 0x0

    iput v11, v10, Landroid/text/format/Time;->minute:I

    .line 743
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v11, 0x0

    iput v11, v10, Landroid/text/format/Time;->second:I

    .line 744
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 747
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    add-long v4, v10, v12

    .line 749
    .local v4, normalizedEndTimeMillis:J
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v10, v10, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v10, v4, v10

    if-gez v10, :cond_a

    .line 751
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v11, v11, Lcom/android/calendar/CalendarEventModel;->mStart:J

    const-wide/32 v13, 0x5265c00

    add-long/2addr v11, v13

    iput-wide v11, v10, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 761
    .end local v4           #normalizedEndTimeMillis:J
    :goto_4
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v11, v10, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 762
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mVisibilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    iput v11, v10, Lcom/android/calendar/CalendarEventModel;->mVisibility:I

    .line 763
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mTransparencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, v10, Lcom/android/calendar/CalendarEventModel;->mTransparency:Z

    .line 768
    iget v10, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    .line 769
    const/4 v7, 0x0

    .line 775
    .local v7, selection:I
    :goto_6
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v7, v10, v11}, Lcom/android/calendar/event/EditEventHelper;->updateRecurrenceRule(ILcom/android/calendar/CalendarEventModel;I)V

    .line 779
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v10, v10, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-nez v10, :cond_9

    .line 780
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/calendar/TimezoneAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    .line 782
    :cond_9
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 753
    .end local v7           #selection:I
    .restart local v4       #normalizedEndTimeMillis:J
    :cond_a
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput-wide v4, v10, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto :goto_4

    .line 756
    .end local v4           #normalizedEndTimeMillis:J
    :cond_b
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 757
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 758
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 759
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v11, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto :goto_4

    .line 763
    :cond_c
    const/4 v11, 0x0

    goto :goto_5

    .line 771
    :cond_d
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 772
    .local v6, position:I
    iget-object v10, p0, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .restart local v7       #selection:I
    goto :goto_6
.end method

.method private findDefaultCalendarPosition(Landroid/database/Cursor;)I
    .locals 5
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1333
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v3

    .line 1352
    :goto_0
    return v0

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const-string v1, "preference_defaultCalendar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1340
    if-nez v0, :cond_1

    move v0, v4

    .line 1341
    goto :goto_0

    .line 1343
    :cond_1
    const-string v1, "ownerAccount"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1345
    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v2, v4

    .line 1346
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1347
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 1348
    goto :goto_0

    .line 1350
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    .line 1352
    goto :goto_0
.end method

.method private initMultiAutoCompleteTextView(I)Landroid/widget/MultiAutoCompleteTextView;
    .locals 2
    .parameter "res"

    .prologue
    .line 1384
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    .line 1385
    .local v0, list:Landroid/widget/MultiAutoCompleteTextView;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1386
    new-instance v1, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v1}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1387
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1390
    sget-object v1, Lcom/android/calendar/event/EditEventView;->sRecipientFilters:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1392
    return-object v0
.end method

.method private isCustomRecurrence()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    if-eq v0, v2, :cond_1

    :cond_0
    move v0, v2

    .line 524
    :goto_0
    return v0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    if-nez v0, :cond_2

    move v0, v1

    .line 499
    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    packed-switch v0, :pswitch_data_0

    :cond_3
    move v0, v2

    .line 524
    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 504
    goto :goto_0

    .line 506
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    invoke-virtual {v0}, Landroid/pim/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->isWeekdayEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 507
    goto :goto_0

    .line 508
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-ne v0, v2, :cond_3

    move v0, v1

    .line 509
    goto :goto_0

    .line 513
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    invoke-virtual {v0}, Landroid/pim/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 514
    goto :goto_0

    .line 515
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    if-ne v0, v2, :cond_3

    move v0, v1

    .line 517
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 521
    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isWeekdayEvent()Z
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 529
    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateRepeats()V
    .locals 23

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    .line 384
    .local v17, time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 385
    .local v13, r:Landroid/content/res/Resources;
    const v16, 0x1090008

    .line 387
    .local v16, resource:I
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object v6, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x1

    const/16 v21, 0x2

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x2

    const/16 v21, 0x3

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x4

    const/16 v21, 0x5

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x6

    const/16 v21, 0x7

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    .line 395
    .local v6, days:[Ljava/lang/String;
    const v20, 0x7f07000a

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 400
    .local v11, ordinals:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->isCustomRecurrence()Z

    move-result v9

    .line 401
    .local v9, isCustomRecurrence:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/EditEventView;->isWeekdayEvent()Z

    move-result v10

    .line 403
    .local v10, isWeekdayEvent:Z
    new-instance v15, Ljava/util/ArrayList;

    const/16 v20, 0x0

    move-object v0, v15

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .local v15, repeatArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    const/16 v20, 0x0

    move-object v0, v14

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .local v14, recurrenceIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v20, 0x7f0a0056

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    const v20, 0x7f0a0057

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    if-eqz v10, :cond_0

    .line 413
    const v20, 0x7f0a0058

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_0
    const v20, 0x7f0a0059

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 418
    .local v8, format:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "%A"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    div-int/lit8 v5, v20, 0x7

    .line 424
    .local v5, dayNumber:I
    const v20, 0x7f0a005a

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 425
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v22, v11, v5

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v22, v0

    aget-object v22, v6, v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const v20, 0x7f0a005d

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 429
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 433
    .local v18, when:J
    const v20, 0x7f0a005e

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 434
    const/4 v7, 0x0

    .line 435
    .local v7, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 436
    or-int/lit16 v7, v7, 0x80

    .line 438
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    const/16 v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    if-eqz v9, :cond_2

    .line 442
    const v20, 0x7f0a005f

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_2
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/event/EditEventView;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 447
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 448
    .local v12, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 449
    if-eqz v9, :cond_5

    .line 450
    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 480
    :cond_3
    :goto_0
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object v0, v4

    move-object/from16 v1, v20

    move/from16 v2, v16

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 481
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v20, 0x1090009

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 489
    :cond_4
    return-void

    .line 452
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    goto :goto_0

    .line 454
    :pswitch_0
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 455
    goto :goto_0

    .line 457
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/pim/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 458
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    goto/16 :goto_0

    .line 461
    :cond_6
    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 464
    goto/16 :goto_0

    .line 466
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/pim/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 467
    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    goto/16 :goto_0

    .line 470
    :cond_7
    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 473
    goto/16 :goto_0

    .line 475
    :pswitch_3
    const/16 v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    goto/16 :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populateTimezone()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/event/EditEventView$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EditEventView$1;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setTimezone(I)V

    .line 344
    return-void
.end method

.method private populateWhen()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 321
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 322
    .local v2, startMillis:J
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 323
    .local v0, endMillis:J
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 324
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 326
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 327
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 329
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$DateClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$DateClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$TimeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/event/EditEventView$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/event/EditEventView$TimeClickListener;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    return-void
.end method

.method private sendAccessibilityEvent()V
    .locals 5

    .prologue
    .line 1074
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1075
    .local v0, am:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v4, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    .local v1, b:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v4}, Lcom/android/calendar/event/EditEventView;->addFieldsRecursive(Ljava/lang/StringBuilder;Landroid/view/View;)V

    .line 1080
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1082
    .local v3, msg:Ljava/lang/CharSequence;
    const/16 v4, 0x8

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1083
    .local v2, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1084
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1085
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 1088
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private setDate(Landroid/widget/TextView;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1404
    const v0, 0x18016

    .line 1416
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 1417
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1418
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1420
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1421
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    return-void

    .line 1421
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setTime(Landroid/widget/TextView;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1426
    const/4 v0, 0x1

    .line 1427
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1428
    or-int/lit16 v0, v0, 0x80

    .line 1439
    :cond_0
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 1440
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1441
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1442
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1443
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    return-void

    .line 1443
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setTimezone(I)V
    .locals 4
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 1448
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/TimezoneAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 1452
    .local v0, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1453
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1454
    iget-object v1, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1455
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1456
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1457
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1458
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1459
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/calendar/TimezoneAdapter;->setCurrentTimezone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setViewStates(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1231
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1232
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->setWhenString()V

    .line 1234
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1235
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1238
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1240
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1241
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1242
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1244
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1247
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1248
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canAddReminders(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1249
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/calendar/event/EditEventView;->setAttendeesEditable(Z)V

    .line 1254
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0}, Lcom/android/calendar/event/AttendeesView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 1255
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    :goto_4
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1260
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v1, 0x7f0e004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1263
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1266
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    :cond_6
    :goto_5
    return-void

    .line 1251
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1257
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1269
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mViewOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1270
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1272
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditOnlyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1273
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 1275
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEditViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1276
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1277
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1278
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1282
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1283
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1284
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 1285
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1291
    :goto_9
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1292
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1293
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1297
    :goto_a
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersGroup:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    invoke-virtual {p0, v5}, Lcom/android/calendar/event/EditEventView;->setAttendeesEditable(Z)V

    .line 1299
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLocationGroup:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionGroup:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1288
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarSelectorGroup:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1289
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarStaticGroup:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 1295
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_a
.end method

.method private showTimezoneDialog()V
    .locals 7

    .prologue
    .line 347
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 349
    .local v0, alertDialogContext:Landroid/content/Context;
    new-instance v4, Lcom/android/calendar/TimezoneAdapter;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 350
    const v4, 0x7f0a0006

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 351
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    .line 355
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 357
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040025

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 360
    .local v3, timezoneFooterView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0036

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    new-instance v4, Lcom/android/calendar/event/EditEventView$2;

    invoke-direct {v4, p0, v3}, Lcom/android/calendar/event/EditEventView$2;-><init>(Lcom/android/calendar/event/EditEventView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 379
    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 380
    return-void
.end method

.method private updateAttendees(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1356
    .local p1, attendeesList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AttendeesView;->setRfc822Validator(Lcom/android/common/Rfc822Validator;)V

    .line 1357
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/util/HashMap;)V

    .line 1358
    return-void
.end method

.method private updateHomeTime()V
    .locals 18

    .prologue
    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    move-object v2, v0

    invoke-static {v9, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/event/EditEventView;->mModification:I

    move v2, v0

    if-eqz v2, :cond_2

    .line 1539
    const/4 v2, 0x1

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    .line 1541
    if-eqz v10, :cond_5

    .line 1542
    or-int/lit16 v2, v2, 0x80

    move v8, v2

    .line 1544
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    move-object v2, v0

    iget v2, v2, Landroid/text/format/Time;->isDst:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v13, v2

    .line 1548
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    move-object v2, v0

    iget v2, v2, Landroid/text/format/Time;->isDst:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v14, v2

    .line 1551
    :goto_2
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v2, v13, v3, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 1553
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1555
    sget-object v2, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object v2, v0

    sget-object v3, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v6, v4

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartTimeHome:Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1561
    const v8, 0x80016

    .line 1563
    sget-object v2, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartDateHome:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object v2, v0

    sget-object v3, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v6, v4

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1569
    if-eq v14, v13, :cond_4

    .line 1570
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v14, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    .line 1573
    :goto_3
    const/4 v2, 0x1

    .line 1574
    if-eqz v10, :cond_3

    .line 1575
    or-int/lit16 v2, v2, 0x80

    move v8, v2

    .line 1579
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1580
    sget-object v2, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object v2, v0

    sget-object v3, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v4, v11

    move-wide v6, v11

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndTimeHome:Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1585
    const v8, 0x80016

    .line 1587
    sget-object v2, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndDateHome:Landroid/widget/TextView;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    move-object v2, v0

    sget-object v3, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    move-wide v4, v11

    move-wide v6, v11

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    :goto_5
    return-void

    .line 1547
    :cond_0
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_1

    .line 1548
    :cond_1
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_2

    .line 1594
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mStartHomeGroup:Landroid/view/View;

    move-object v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventView;->mEndHomeGroup:Landroid/view/View;

    move-object v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_3
    move v8, v2

    goto/16 :goto_4

    :cond_4
    move-object v13, v15

    goto/16 :goto_3

    :cond_5
    move v8, v2

    goto/16 :goto_0
.end method

.method private updateRemindersVisibility(I)V
    .locals 3
    .parameter "numReminders"

    .prologue
    const/4 v2, 0x0

    .line 1361
    if-nez p1, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1363
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mReminderAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1367
    :goto_0
    return-void

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddAttendeesButton:Landroid/widget/ImageButton;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1476
    return-void

    .line 1475
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1465
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_1

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 652
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 660
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_1

    .line 661
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v2, v3}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 662
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v2}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    .line 663
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 664
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v1, nextIntent:Landroid/content/Intent;
    new-array v0, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.calendar"

    aput-object v3, v0, v2

    .line 666
    .local v0, array:[Ljava/lang/String;
    const-string v2, "authorities"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 668
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 677
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #nextIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-ne p1, v2, :cond_0

    .line 671
    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/TimezoneAdapter;->getCount()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 672
    invoke-direct {p0, p2}, Lcom/android/calendar/event/EditEventView;->setTimezone(I)V

    .line 673
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 674
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 633
    .local v1, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 634
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 635
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 636
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 640
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderAddButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 641
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1519
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1520
    if-eqz v0, :cond_0

    .line 1521
    const-string v1, "color"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1522
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mColorChip:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1527
    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->checkForAttendeeListVisibility(Landroid/database/Cursor;)V

    .line 1529
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1601
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mColorChip:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1603
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1470
    return-void
.end method

.method public prepareForSave()Z
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 606
    :cond_0
    const/4 v0, 0x0

    .line 609
    :goto_0
    return v0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAddAttendeesListener:Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView$AddAttendeeClickListener;->onClick(Landroid/view/View;)V

    .line 609
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->fillModelFromUI()Z

    move-result v0

    goto :goto_0
.end method

.method protected setAllDayViewsVisibility(Z)V
    .locals 7
    .parameter "isChecked"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1482
    if-eqz p1, :cond_2

    .line 1483
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_1

    .line 1484
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1485
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1490
    .local v0, endMillis:J
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1491
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1492
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1494
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 1495
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 1498
    .end local v0           #endMillis:J
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1499
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1500
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1501
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1514
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 1515
    return-void

    .line 1503
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_3

    .line 1504
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1505
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1506
    .restart local v0       #endMillis:J
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setDate(Landroid/widget/TextView;J)V

    .line 1507
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/event/EditEventView;->setTime(Landroid/widget/TextView;J)V

    .line 1509
    .end local v0           #endMillis:J
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1510
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1511
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1512
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setAttendeesEditable(Z)V
    .locals 4
    .parameter "editable"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1313
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v1}, Lcom/android/calendar/event/AttendeesView;->getChildCount()I

    move-result v0

    .line 1314
    .local v0, attCount:I
    if-lez v0, :cond_0

    .line 1315
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mResponseGroup:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1316
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1321
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v1, p1}, Lcom/android/calendar/event/AttendeesView;->setEnabled(Z)V

    .line 1322
    return-void

    .line 1318
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mResponseGroup:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesGroup:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCalendarsCursor(Landroid/database/Cursor;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1150
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsCursor:Landroid/database/Cursor;

    .line 1151
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1153
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1156
    :cond_1
    if-nez p2, :cond_3

    .line 1213
    :cond_2
    :goto_0
    return-void

    .line 1161
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1162
    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a003d

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventView;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1170
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventView;->findDefaultCalendarPosition(Landroid/database/Cursor;)I

    move-result v0

    .line 1173
    new-instance v1, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1174
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1175
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1176
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1178
    const-string v1, "color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1179
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mColorChip:Landroid/view/View;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1182
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventView;->checkForAttendeeListVisibility(Landroid/database/Cursor;)V

    .line 1188
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v1, v1, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v1, :cond_5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1190
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_5

    .line 1192
    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->extractDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    if-eqz v0, :cond_5

    .line 1194
    new-instance v1, Lcom/android/common/Rfc822Validator;

    invoke-direct {v1, v0}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    .line 1195
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1199
    :cond_5
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventView;->mSaveAfterQueryComplete:Z

    if-eqz v0, :cond_2

    .line 1200
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1201
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->fillModelFromUI()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1202
    if-eqz p2, :cond_6

    move v0, v3

    .line 1203
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    or-int/lit8 v0, v0, 0x2

    invoke-interface {v1, v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1204
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto/16 :goto_0

    .line 1202
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 1205
    :cond_7
    if-eqz p2, :cond_8

    .line 1206
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0, v3}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->setDoneCode(I)V

    .line 1207
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mDone:Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;

    invoke-interface {v0}, Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;->run()V

    goto/16 :goto_0

    .line 1208
    :cond_8
    const-string v0, "EditEvent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1209
    const-string v0, "EditEvent"

    const-string v1, "SetCalendarsCursor:Save failed and unable to exit view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setModel(Lcom/android/calendar/CalendarEventModel;)V
    .locals 12
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 888
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/EmailAddressAdapter;->close()V

    .line 890
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

    .line 893
    :cond_0
    if-nez p1, :cond_2

    .line 895
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1071
    :cond_1
    :goto_0
    return-void

    .line 900
    :cond_2
    invoke-static {p1}, Lcom/android/calendar/event/EditEventHelper;->canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z

    .line 901
    invoke-static {p1}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v1

    .line 902
    invoke-static {p1}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v8

    .line 905
    invoke-static {p1}, Lcom/android/calendar/event/EditEventHelper;->isPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v9

    .line 907
    iget-wide v2, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 908
    iget-wide v4, p1, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 909
    iget-object v6, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 912
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 913
    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 914
    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v6, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 915
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 917
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_4

    .line 918
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 919
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 920
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 922
    :cond_4
    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 923
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 924
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mEventRecurrence:Landroid/pim/EventRecurrence;

    invoke-virtual {v3, v2}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 929
    :cond_5
    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-nez v2, :cond_7

    .line 930
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 950
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/calendar/event/EditEventView$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EditEventView$3;-><init>(Lcom/android/calendar/event/EditEventView;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 956
    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v1, :cond_b

    .line 957
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 959
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 960
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 961
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 962
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 963
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 968
    :goto_2
    new-instance v1, Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 969
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    .line 970
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 974
    :cond_6
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 975
    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 976
    array-length v3, v2

    .line 977
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 978
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_c

    .line 979
    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 931
    :cond_7
    if-eqz v1, :cond_8

    if-eqz v9, :cond_9

    .line 933
    :cond_8
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e0071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 934
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e0072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAddAttendeesButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 937
    :cond_9
    sget-object v1, Lcom/android/calendar/event/EditEventView;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 938
    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 939
    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/calendar/event/EditEventHelper;->extractDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 940
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object v1, v2

    .line 944
    :cond_a
    new-instance v2, Lcom/android/calendar/EmailAddressAdapter;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/calendar/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

    .line 945
    new-instance v2, Lcom/android/common/Rfc822Validator;

    invoke-direct {v2, v1}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    .line 946
    const v1, 0x7f0e0073

    invoke-direct {p0, v1}, Lcom/android/calendar/event/EditEventView;->initMultiAutoCompleteTextView(I)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    .line 947
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    .line 965
    :cond_b
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAllDayCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 981
    :cond_c
    iput-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderValues:Ljava/util/ArrayList;

    .line 982
    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 983
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderLabels:Ljava/util/ArrayList;

    .line 985
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 986
    const-string v2, "preferences_default_reminder"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 987
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/EditEventView;->mDefaultReminderMinutes:I

    .line 989
    const/4 v1, 0x0

    .line 990
    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eqz v2, :cond_13

    .line 991
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    .line 992
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 993
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 994
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mReminderValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderLabels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v1, v2, v4, v5}, Lcom/android/calendar/event/EventViewUtils;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 996
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventView;->mReminderItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/calendar/event/EditEventView;->mReminderValues:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/event/EditEventView;->mReminderLabels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Lcom/android/calendar/event/EventViewUtils;->addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    goto :goto_4

    :cond_d
    move v2, v10

    .line 1003
    :goto_5
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v3, 0x7f0e0060

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventView;->mReminderAddButton:Landroid/widget/ImageButton;

    .line 1004
    new-instance v1, Lcom/android/calendar/event/EditEventView$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EditEventView$4;-><init>(Lcom/android/calendar/event/EditEventView;)V

    .line 1014
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mReminderAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1015
    invoke-direct {p0, v2}, Lcom/android/calendar/event/EditEventView;->updateRemindersVisibility(I)V

    .line 1017
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-nez v1, :cond_e

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    const-string v2, "calendar.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1020
    :cond_e
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    :goto_6
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLocationTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mTransparencySpinner:Landroid/widget/Spinner;

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mTransparency:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1028
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mVisibilitySpinner:Landroid/widget/Spinner;

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mVisibility:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1030
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e0068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1031
    if-eqz v8, :cond_11

    .line 1032
    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v2

    .line 1034
    iget-object v3, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 1035
    iget-object v2, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1036
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    :goto_8
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 1045
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1046
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e003d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1048
    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mColorChip:Landroid/view/View;

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1055
    :goto_9
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateTimezone()V

    .line 1056
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateWhen()V

    .line 1057
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->populateRepeats()V

    .line 1058
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Lcom/android/calendar/event/EditEventView;->updateAttendees(Ljava/util/HashMap;)V

    .line 1060
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->updateView()V

    .line 1061
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1062
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mLoadingMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1063
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->sendAccessibilityEvent()V

    .line 1065
    if-eqz v9, :cond_1

    .line 1067
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e0071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e0072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mAddAttendeesButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 1023
    :cond_f
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1027
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1038
    :cond_11
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mResponseRadioGroup:Landroid/widget/RadioGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 1051
    :cond_12
    iget-object v1, p0, Lcom/android/calendar/event/EditEventView;->mView:Landroid/view/View;

    const v2, 0x7f0e003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1052
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_13
    move v2, v1

    goto/16 :goto_5
.end method

.method public setModification(I)V
    .locals 0
    .parameter "modifyWhich"

    .prologue
    .line 1325
    iput p1, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    .line 1326
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventView;->updateView()V

    .line 1327
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventView;->updateHomeTime()V

    .line 1328
    return-void
.end method

.method protected setWhenString()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 1128
    const/16 v6, 0x10

    .line 1129
    .local v6, flags:I
    iget-object v7, p0, Lcom/android/calendar/event/EditEventView;->mTimezone:Ljava/lang/String;

    .line 1130
    .local v7, tz:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_1

    .line 1131
    or-int/lit8 v6, v6, 0x2

    .line 1132
    const-string v7, "UTC"

    .line 1139
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 1140
    .local v2, startMillis:J
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 1141
    .local v4, endMillis:J
    sget-object v0, Lcom/android/calendar/event/EditEventView;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1142
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/android/calendar/event/EditEventView;->mF:Ljava/util/Formatter;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1144
    .local v8, when:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mWhenView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    return-void

    .line 1134
    .end local v2           #startMillis:J
    .end local v4           #endMillis:J
    .end local v8           #when:Ljava/lang/String;
    :cond_1
    or-int/lit8 v6, v6, 0x1

    .line 1135
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    or-int/lit16 v6, v6, 0x80

    goto :goto_0
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    if-nez v0, :cond_0

    .line 1227
    :goto_0
    return-void

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventView;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    iget v0, p0, Lcom/android/calendar/event/EditEventView;->mModification:I

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setViewStates(I)V

    goto :goto_0

    .line 1225
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EditEventView;->setViewStates(I)V

    goto :goto_0
.end method
