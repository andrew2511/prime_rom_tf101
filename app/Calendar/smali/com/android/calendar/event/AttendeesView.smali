.class public Lcom/android/calendar/event/AttendeesView;
.super Landroid/widget/LinearLayout;
.source "AttendeesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;
    }
.end annotation


# static fields
.field private static final CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PRESENCE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultBadge:Landroid/graphics/drawable/Drawable;

.field private final mDividerForMaybe:Landroid/view/View;

.field private final mDividerForNo:Landroid/view/View;

.field private final mDividerForNoResponse:Landroid/view/View;

.field private final mDividerForYes:Landroid/view/View;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMaybe:I

.field private mNo:I

.field private mNoResponse:I

.field private final mPresenceQueryHandler:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

.field private mValidator:Lcom/android/common/Rfc822Validator;

.field private mYes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/AttendeesView;->PRESENCE_PROJECTION:[Ljava/lang/String;

    .line 71
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/calendar/event/AttendeesView;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    iput-object p1, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    .line 101
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    new-instance v2, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;-><init>(Lcom/android/calendar/event/AttendeesView;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mPresenceQueryHandler:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f02001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDefaultBadge:Landroid/graphics/drawable/Drawable;

    .line 107
    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForYes:Landroid/view/View;

    .line 109
    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForNo:Landroid/view/View;

    .line 110
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForMaybe:Landroid/view/View;

    .line 111
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/AttendeesView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/AttendeesView;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private addOneAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V
    .locals 14
    .parameter "attendee"

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/AttendeesView;->contains(Lcom/android/calendar/CalendarEventModel$Attendee;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v2, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView;->mDefaultBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;-><init>(Lcom/android/calendar/CalendarEventModel$Attendee;ILandroid/graphics/drawable/Drawable;)V

    .line 209
    .local v2, item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    iget v12, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    .line 210
    .local v12, status:I
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    move-object v10, v0

    .line 212
    .local v10, name:Ljava/lang/String;
    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 241
    :pswitch_0
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    if-nez v1, :cond_a

    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    if-nez v1, :cond_b

    const/4 v1, 0x0

    :goto_4
    add-int v11, v0, v1

    .line 244
    .local v11, startIndex:I
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    add-int v9, v11, v0

    .line 245
    .local v9, index:I
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    .line 250
    :goto_5
    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v13

    .line 251
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p0, v13, v9}, Lcom/android/calendar/event/AttendeesView;->addView(Landroid/view/View;I)V

    .line 258
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 260
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    if-nez v1, :cond_d

    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    if-nez v1, :cond_e

    const/4 v1, 0x0

    :goto_8
    add-int v8, v0, v1

    .line 262
    .local v8, dividerIndex:I
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    invoke-virtual {p0, v0, v8}, Lcom/android/calendar/event/AttendeesView;->addView(Landroid/view/View;I)V

    .line 265
    .end local v8           #dividerIndex:I
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mPresenceQueryHandler:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

    iget v1, v2, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    add-int/lit8 v1, v1, 0x1

    sget-object v3, Lcom/android/calendar/event/AttendeesView;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/event/AttendeesView;->PRESENCE_PROJECTION:[Ljava/lang/String;

    const-string v5, "data1 IN (?)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v9           #index:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #startIndex:I
    .end local v13           #view:Landroid/view/View;
    :cond_2
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    move-object v10, v0

    goto :goto_1

    .line 214
    .restart local v10       #name:Ljava/lang/String;
    :pswitch_1
    const/4 v11, 0x0

    .line 215
    .restart local v11       #startIndex:I
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForYes:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/AttendeesView;->addView(Landroid/view/View;I)V

    .line 218
    :cond_3
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    .line 219
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v9, v0, 0x0

    .line 220
    .restart local v9       #index:I
    goto :goto_5

    .line 223
    .end local v9           #index:I
    .end local v11           #startIndex:I
    :pswitch_2
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v0, :cond_5

    const/4 v0, 0x0

    move v11, v0

    .line 224
    .restart local v11       #startIndex:I
    :goto_9
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    if-nez v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForNo:Landroid/view/View;

    invoke-virtual {p0, v0, v11}, Lcom/android/calendar/event/AttendeesView;->addView(Landroid/view/View;I)V

    .line 227
    :cond_4
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    .line 228
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int v9, v11, v0

    .line 229
    .restart local v9       #index:I
    goto/16 :goto_5

    .line 223
    .end local v9           #index:I
    .end local v11           #startIndex:I
    :cond_5
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v0, v0, 0x1

    move v11, v0

    goto :goto_9

    .line 232
    :pswitch_3
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_a
    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    if-nez v1, :cond_8

    const/4 v1, 0x0

    :goto_b
    add-int v11, v0, v1

    .line 233
    .restart local v11       #startIndex:I
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    if-nez v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForMaybe:Landroid/view/View;

    invoke-virtual {p0, v0, v11}, Lcom/android/calendar/event/AttendeesView;->addView(Landroid/view/View;I)V

    .line 236
    :cond_6
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    .line 237
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int v9, v11, v0

    .line 238
    .restart local v9       #index:I
    goto/16 :goto_5

    .line 232
    .end local v9           #index:I
    .end local v11           #startIndex:I
    :cond_7
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_8
    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 241
    :cond_9
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_a
    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_b
    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 260
    .restart local v9       #index:I
    .restart local v11       #startIndex:I
    .restart local v13       #view:Landroid/view/View;
    :cond_c
    iget v0, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_d
    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_e
    iget v1, p0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private constructAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .locals 3
    .parameter "item"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mView:Landroid/view/View;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 3
    .parameter "label"

    .prologue
    .line 133
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c000f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 137
    return-object v0
.end method

.method private updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 154
    iget-object v0, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 155
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mView:Landroid/view/View;

    .line 156
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0e002e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 157
    .local v3, nameView:Landroid/widget/TextView;
    iget-object v6, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-boolean v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-eqz v6, :cond_2

    .line 159
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 166
    :goto_1
    const v6, 0x7f0e0030

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 167
    .local v2, button:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v8

    :goto_2
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 168
    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 169
    iget-boolean v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-eqz v6, :cond_4

    .line 170
    const v6, 0x7f02001e

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 174
    :goto_3
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v6, 0x7f0e002d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    .line 177
    .local v1, badge:Landroid/widget/QuickContactBadge;
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget-object v6, v6, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 179
    const/16 v6, 0x3c

    invoke-virtual {v1, v6}, Landroid/widget/QuickContactBadge;->setMaxHeight(I)V

    .line 180
    iget v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mPresence:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 181
    const v6, 0x7f0e002f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 182
    .local v4, presence:Landroid/widget/ImageView;
    iget v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mPresence:I

    invoke-static {v6}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    .end local v4           #presence:Landroid/widget/ImageView;
    :cond_0
    return-object v5

    .line 157
    .end local v1           #badge:Landroid/widget/QuickContactBadge;
    .end local v2           #button:Landroid/widget/ImageButton;
    :cond_1
    iget-object v6, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    and-int/lit8 v6, v6, -0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_1

    .line 167
    .restart local v2       #button:Landroid/widget/ImageButton;
    :cond_3
    const/16 v6, 0x8

    goto :goto_2

    .line 172
    :cond_4
    const v6, 0x7f020023

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3
.end method


# virtual methods
.method public addAttendees(Ljava/lang/String;)V
    .locals 6
    .parameter "attendees"

    .prologue
    .line 287
    iget-object v4, p0, Lcom/android/calendar/event/AttendeesView;->mValidator:Lcom/android/common/Rfc822Validator;

    invoke-static {p1, v4}, Lcom/android/calendar/event/EditEventHelper;->getAddressesFromList(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 289
    .local v1, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    monitor-enter p0

    .line 290
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 291
    .local v0, address:Landroid/text/util/Rfc822Token;
    new-instance v2, Lcom/android/calendar/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v2, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    iget-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 295
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->addOneAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 297
    .end local v0           #address:Landroid/text/util/Rfc822Token;
    .end local v2           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    return-void
.end method

.method public addAttendees(Ljava/util/HashMap;)V
    .locals 3
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
    .line 279
    .local p1, attendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    monitor-enter p0

    .line 280
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 281
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    invoke-direct {p0, v0}, Lcom/android/calendar/event/AttendeesView;->addOneAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 283
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    return-void
.end method

.method public contains(Lcom/android/calendar/CalendarEventModel$Attendee;)Z
    .locals 6
    .parameter "attendee"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->getChildCount()I

    move-result v2

    .line 191
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 193
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    .line 197
    .local v0, attendeeItem:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget-object v5, v5, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    const/4 v4, 0x1

    .line 201
    .end local v0           #attendeeItem:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    .end local v3           #view:Landroid/view/View;
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/calendar/CalendarEventModel$Attendee;
    .locals 2
    .parameter "index"

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 380
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x0

    .line 383
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    goto :goto_0
.end method

.method public isMarkAsRemoved(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 306
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 309
    .end local p0
    :goto_0
    return v1

    .restart local p0
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    .line 390
    .local v0, item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    iget-boolean v1, v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    .line 391
    invoke-direct {p0, v0}, Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    .line 392
    return-void

    .line 390
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move v4, v5

    .line 118
    .local v4, visibility:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/event/AttendeesView;->getChildCount()I

    move-result v1

    .line 119
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, child:Landroid/view/View;
    const v5, 0x7f0e0030

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, minusButton:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #minusButton:Landroid/view/View;
    .end local v4           #visibility:I
    :cond_1
    const/16 v5, 0x8

    move v4, v5

    goto :goto_0

    .line 126
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v4       #visibility:I
    :cond_2
    return-void
.end method

.method public setRfc822Validator(Lcom/android/common/Rfc822Validator;)V
    .locals 0
    .parameter "validator"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/calendar/event/AttendeesView;->mValidator:Lcom/android/common/Rfc822Validator;

    .line 130
    return-void
.end method
