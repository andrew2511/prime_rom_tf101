.class public Lcom/android/contacts/detail/ContactDetailHeaderView;
.super Landroid/widget/FrameLayout;
.source "ContactDetailHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;
    }
.end annotation


# instance fields
.field private mAttributionView:Landroid/widget/TextView;

.field private mContactUri:Landroid/net/Uri;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private mListener:Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;

.field private mOrganizationTextView:Landroid/widget/TextView;

.field private mPhoneticNameView:Landroid/widget/TextView;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mStarredView:Landroid/widget/CheckBox;

.field private mStatusContainerView:Landroid/view/View;

.field private mStatusDateView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/detail/ContactDetailHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/detail/ContactDetailHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 95
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04000a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mDisplayNameView:Landroid/widget/TextView;

    .line 98
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 100
    const v1, 0x7f070038

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mPhoneticNameView:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 103
    const v1, 0x7f070039

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mOrganizationTextView:Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mOrganizationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    const v1, 0x7f07003d

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStarredView:Landroid/widget/CheckBox;

    .line 107
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v1, 0x7f070036

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mPhotoView:Landroid/widget/ImageView;

    .line 111
    const v1, 0x7f07003e

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusContainerView:Landroid/view/View;

    .line 112
    const v1, 0x7f07003b

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusView:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f07003c

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusDateView:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f07003a

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mAttributionView:Landroid/widget/TextView;

    .line 116
    return-void
.end method

.method private performDisplayNameClick()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mListener:Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mListener:Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mDisplayNameView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;->onDisplayNameClick(Landroid/view/View;)V

    .line 160
    :cond_0
    return-void
.end method

.method private performPhotoClick()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mListener:Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mListener:Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mPhotoView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;->onPhotoClick(Landroid/view/View;)V

    .line 154
    :cond_0
    return-void
.end method

.method private setAttribution(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "isJoinedContact"
    .parameter "isDirectoryEntry"
    .parameter "directoryDisplayName"
    .parameter "directoryType"

    .prologue
    const/4 v5, 0x0

    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mAttributionView:Landroid/widget/TextView;

    const v3, 0x7f0c01a4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 283
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mAttributionView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    :goto_0
    return-void

    .line 284
    :cond_0
    if-eqz p2, :cond_2

    .line 285
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, p3

    .line 288
    .local v0, displayName:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0182

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mAttributionView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mAttributionView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    move-object v0, p4

    .line 285
    goto :goto_1

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mAttributionView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCompany(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 14
    .parameter "contactData"

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v10

    const/16 v11, 0x1e

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    move v2, v10

    .line 207
    .local v2, displayNameIsOrganization:Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    .line 208
    .local v3, entity:Landroid/content/Entity;
    invoke-virtual {v3}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity$NamedContentValues;

    .line 209
    .local v8, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v4, v8, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 210
    .local v4, entryValues:Landroid/content/ContentValues;
    const-string v10, "mimetype"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, mimeType:Ljava/lang/String;
    const-string v10, "vnd.android.cursor.item/organization"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 213
    const-string v10, "data1"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, company:Ljava/lang/String;
    const-string v10, "data4"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 219
    .local v9, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 220
    if-eqz v2, :cond_3

    const/4 v10, 0x0

    move-object v0, v10

    .line 235
    .local v0, combined:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 236
    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mOrganizationTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    .end local v0           #combined:Ljava/lang/String;
    .end local v1           #company:Ljava/lang/String;
    .end local v3           #entity:Landroid/content/Entity;
    .end local v4           #entryValues:Landroid/content/ContentValues;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v9           #title:Ljava/lang/String;
    :goto_2
    return-void

    .line 205
    .end local v2           #displayNameIsOrganization:Z
    :cond_2
    const/4 v10, 0x0

    move v2, v10

    goto :goto_0

    .restart local v1       #company:Ljava/lang/String;
    .restart local v2       #displayNameIsOrganization:Z
    .restart local v3       #entity:Landroid/content/Entity;
    .restart local v4       #entryValues:Landroid/content/ContentValues;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #mimeType:Ljava/lang/String;
    .restart local v8       #subValue:Landroid/content/Entity$NamedContentValues;
    .restart local v9       #title:Ljava/lang/String;
    :cond_3
    move-object v0, v9

    .line 220
    goto :goto_1

    .line 222
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 223
    if-eqz v2, :cond_5

    const/4 v10, 0x0

    move-object v0, v10

    .restart local v0       #combined:Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v0           #combined:Ljava/lang/String;
    :cond_5
    move-object v0, v1

    goto :goto_3

    .line 225
    :cond_6
    if-eqz v2, :cond_7

    .line 226
    move-object v0, v9

    .restart local v0       #combined:Ljava/lang/String;
    goto :goto_1

    .line 228
    .end local v0           #combined:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0192

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #combined:Ljava/lang/String;
    goto :goto_1

    .line 238
    :cond_8
    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mOrganizationTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mOrganizationTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 246
    .end local v0           #combined:Ljava/lang/String;
    .end local v1           #company:Ljava/lang/String;
    .end local v3           #entity:Landroid/content/Entity;
    .end local v4           #entryValues:Landroid/content/ContentValues;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v9           #title:Ljava/lang/String;
    :cond_9
    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mOrganizationTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "displayName"
    .parameter "phoneticName"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mPhoneticNameView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mPhoneticNameView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPhoto(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter "bitmap"
    .parameter "fadeIn"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 180
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 181
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 182
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 183
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 185
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    return-void
.end method

.method private setSocialDate(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "dateText"

    .prologue
    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusDateView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusDateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusDateView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSocialSnippet(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "snippet"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusContainerView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setStared(ZZ)V
    .locals 2
    .parameter "visible"
    .parameter "starred"

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStarredView:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStarredView:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public loadData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 5
    .parameter "contactData"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mContactUri:Landroid/net/Uri;

    .line 125
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getPhoneticName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailHeaderView;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->setCompany(Lcom/android/contacts/ContactLoader$Result;)V

    .line 127
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isLoadingPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/contacts/detail/ContactDetailHeaderView;->setPhoto(Landroid/graphics/Bitmap;Z)V

    .line 136
    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    :goto_1
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStarred()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailHeaderView;->setStared(ZZ)V

    .line 137
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getSocialSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/contacts/util/ContactBadgeUtil;->getSocialDate(Lcom/android/contacts/ContactLoader$Result;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->setSocialDate(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    move v1, v4

    :goto_2
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailHeaderView;->setAttribution(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v0

    .line 131
    .local v0, photo:[B
    if-eqz v0, :cond_1

    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_3
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailHeaderView;->setPhoto(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/ContactBadgeUtil;->loadPlaceholderPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    .end local v0           #photo:[B
    :cond_2
    move v1, v3

    .line 136
    goto :goto_1

    :cond_3
    move v1, v3

    .line 139
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 303
    :sswitch_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mContactUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 306
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 311
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailHeaderView;->performPhotoClick()V

    goto :goto_0

    .line 315
    :sswitch_2
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailHeaderView;->performDisplayNameClick()V

    goto :goto_0

    .line 299
    :sswitch_data_0
    .sparse-switch
        0x7f070036 -> :sswitch_1
        0x7f070037 -> :sswitch_2
        0x7f07003d -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 323
    instance-of v2, p1, Landroid/widget/TextView;

    if-nez v2, :cond_0

    move v2, v4

    .line 337
    .end local p1
    :goto_0
    return v2

    .line 327
    .restart local p1
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 329
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 330
    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 335
    .local v0, cm:Landroid/content/ClipboardManager;
    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01a5

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 337
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailHeaderView;->mListener:Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;

    .line 148
    return-void
.end method
