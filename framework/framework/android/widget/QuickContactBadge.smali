.class public Landroid/widget/QuickContactBadge;
.super Landroid/widget/ImageView;
.source "QuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/QuickContactBadge$QueryHandler;
    }
.end annotation


# static fields
.field static final CONTACT_ID_COLUMN_INDEX:I = 0x0

.field static final CONTACT_LOOKUPKEY_COLUMN_INDEX:I = 0x1

.field static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final TOKEN_CONTACT_LOOKUP_AND_TRIGGER:I = 0x4

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3


# instance fields
.field private mBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mDefaultAvatar:Landroid/graphics/drawable/Drawable;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mMode:I

.field private mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 71
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/QuickContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 97
    sget-object v2, Lcom/android/internal/R$styleable;->QuickContactBadge:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/QuickContactBadge;->mMode:I

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 107
    .local v1, styledAttributes:Landroid/content/res/TypedArray;
    const/16 v2, 0xc6

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->init()V

    .line 112
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    .line 113
    return-void
.end method

.method static synthetic access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/QuickContactBadge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;->trigger(Landroid/net/Uri;)V

    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 126
    new-instance v0, Landroid/widget/QuickContactBadge$QueryHandler;

    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/QuickContactBadge$QueryHandler;-><init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    .line 127
    invoke-virtual {p0, p0}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method private onContactUriChanged()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 195
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :goto_11
    return-void

    .line 197
    :cond_12
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11
.end method

.method private trigger(Landroid/net/Uri;)V
    .registers 5
    .parameter "lookupUri"

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/widget/QuickContactBadge;->mMode:I

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v0, p0, p1, v1, v2}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 273
    return-void
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .registers 11
    .parameter "emailAddress"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    .line 211
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 212
    if-nez p2, :cond_1d

    .line 213
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_1c
    return-void

    .line 217
    :cond_1d
    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 218
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_1c
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .registers 11
    .parameter "phoneNumber"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    .line 232
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 233
    if-nez p2, :cond_19

    .line 234
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_18
    return-void

    .line 238
    :cond_19
    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 239
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_18
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .registers 3
    .parameter "contactUri"

    .prologue
    const/4 v0, 0x0

    .line 181
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 182
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    .line 185
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 118
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 119
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 120
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 121
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->invalidate()V

    .line 123
    :cond_17
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_13

    .line 245
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x4

    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    sget-object v4, Landroid/widget/QuickContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_12
    :goto_12
    return-void

    .line 248
    :cond_13
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 249
    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v4, 0x2

    iget-object v5, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 252
    :cond_31
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 253
    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v4, 0x3

    iget-object v5, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_19

    .line 159
    :cond_18
    :goto_18
    return-void

    .line 148
    :cond_19
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 150
    iget v1, p0, Landroid/widget/QuickContactBadge;->mPaddingTop:I

    if-nez v1, :cond_34

    iget v1, p0, Landroid/widget/QuickContactBadge;->mPaddingLeft:I

    if-nez v1, :cond_34

    .line 151
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_18

    .line 153
    :cond_34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 154
    .local v0, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 155
    iget v1, p0, Landroid/widget/QuickContactBadge;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/QuickContactBadge;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 156
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_18
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .registers 2
    .parameter "excludeMimes"

    .prologue
    .line 268
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setImageToDefault()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_11

    .line 166
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10802b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    .line 168
    :cond_11
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 136
    iput p1, p0, Landroid/widget/QuickContactBadge;->mMode:I

    .line 137
    return-void
.end method
