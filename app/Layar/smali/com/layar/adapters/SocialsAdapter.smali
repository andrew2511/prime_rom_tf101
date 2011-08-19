.class public Lcom/layar/adapters/SocialsAdapter;
.super Ljava/lang/Object;
.source "SocialsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;,
        Lcom/layar/adapters/SocialsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private isChecked:[Z

.field private isEmailChecked:Z

.field private isLinked:[Z

.field private final mContext:Landroid/content/Context;

.field private final mHostedServiceName:Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field mListner:Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mSocialManager:Lcom/layar/data/social/SocialManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/layar/adapters/SocialsAdapter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "parent"
    .parameter "hostedServiceName"

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->mListner:Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;

    .line 30
    sget-object v1, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    .line 31
    sget-object v1, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isLinked:[Z

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/layar/adapters/SocialsAdapter;->isEmailChecked:Z

    .line 47
    iput-object p1, p0, Lcom/layar/adapters/SocialsAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/layar/adapters/SocialsAdapter;->mParent:Landroid/view/ViewGroup;

    .line 49
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    invoke-static {}, Lcom/layar/App;->getSocialManager()Lcom/layar/data/social/SocialManager;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->mSocialManager:Lcom/layar/data/social/SocialManager;

    .line 52
    iput-object p3, p0, Lcom/layar/adapters/SocialsAdapter;->mHostedServiceName:Ljava/lang/String;

    .line 54
    if-eqz p3, :cond_0

    sget-object v1, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 55
    .local v0, count:I
    :goto_0
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    .line 56
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isLinked:[Z

    .line 58
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    sub-int v2, v0, v3

    aput-boolean v3, v1, v2

    .line 59
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isLinked:[Z

    sub-int v2, v0, v3

    aput-boolean v3, v1, v2

    .line 61
    invoke-direct {p0}, Lcom/layar/adapters/SocialsAdapter;->refreshLinkedSocials()V

    .line 62
    invoke-virtual {p0}, Lcom/layar/adapters/SocialsAdapter;->generate()V

    .line 63
    return-void

    .line 54
    .end local v0           #count:I
    :cond_0
    sget-object v1, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v1, v1

    move v0, v1

    goto :goto_0
.end method

.method private refreshLinkedSocials()V
    .locals 5

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/layar/adapters/SocialsAdapter;->getCount()I

    move-result v0

    .line 75
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 86
    return-void

    .line 76
    :cond_0
    sget-object v2, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 77
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->isLinked:[Z

    iget-object v3, p0, Lcom/layar/adapters/SocialsAdapter;->mSocialManager:Lcom/layar/data/social/SocialManager;

    invoke-virtual {p0, v1}, Lcom/layar/adapters/SocialsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/layar/data/social/SocialManager;->isSocialLinked(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v2, v1

    .line 78
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget-object v3, p0, Lcom/layar/adapters/SocialsAdapter;->isLinked:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/layar/adapters/SocialsAdapter;->mSocialManager:Lcom/layar/data/social/SocialManager;

    invoke-virtual {p0, v1}, Lcom/layar/adapters/SocialsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/layar/data/social/SocialManager;->isSocialPrefered(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v2, v1

    .line 80
    invoke-virtual {p0, v1}, Lcom/layar/adapters/SocialsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget-boolean v3, p0, Lcom/layar/adapters/SocialsAdapter;->isEmailChecked:Z

    aput-boolean v3, v2, v1

    .line 75
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 82
    :cond_3
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->mHostedServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget-object v3, p0, Lcom/layar/adapters/SocialsAdapter;->mSocialManager:Lcom/layar/data/social/SocialManager;

    iget-object v4, p0, Lcom/layar/adapters/SocialsAdapter;->mHostedServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/data/social/SocialManager;->isSocialPrefered(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v2, v1

    goto :goto_2
.end method


# virtual methods
.method public generate()V
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 162
    invoke-virtual {p0}, Lcom/layar/adapters/SocialsAdapter;->getCount()I

    move-result v0

    .line 163
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 166
    return-void

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/layar/adapters/SocialsAdapter;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getChecked()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v1, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 127
    return-object v1

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 122
    sget-object v2, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 123
    sget-object v2, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_2
    const-string v2, "developer"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getCheckedArray()[Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    return-object v0
.end method

.method public getCheckedAsString()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v1, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 115
    return-object v1

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 109
    sget-object v2, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/layar/data/social/SocialTypes;->SOCIAL_TITLE_IDS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->mHostedServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/layar/adapters/SocialsAdapter;->isLinked:[Z

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 147
    sget-object v0, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "developer"

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 151
    sget-object v0, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/layar/data/social/SocialTypes;->SOCIAL_TITLE_IDS:[I

    aget v0, v0, p1

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public getView(I)Landroid/view/View;
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f070025

    const/4 v5, 0x0

    .line 197
    iget-object v3, p0, Lcom/layar/adapters/SocialsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030034

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, viewResult:Landroid/view/View;
    new-instance v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;

    invoke-direct {v0, v7}, Lcom/layar/adapters/SocialsAdapter$ViewHolder;-><init>(Lcom/layar/adapters/SocialsAdapter$ViewHolder;)V

    .line 199
    .local v0, holder:Lcom/layar/adapters/SocialsAdapter$ViewHolder;
    const v3, 0x7f07004a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->image:Landroid/widget/CheckBox;

    .line 200
    const v3, 0x7f07004c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 202
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    sget-object v3, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v3, v3

    if-ge p1, v3, :cond_1

    .line 205
    sget-object v3, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    aget-object v3, v3, p1

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 207
    .local v1, text:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/layar/adapters/SocialsAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f090119

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    .end local v1           #text:Landroid/widget/TextView;
    :cond_0
    iget-object v3, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->image:Landroid/widget/CheckBox;

    sget-object v4, Lcom/layar/data/social/SocialTypes;->SOCIAL_IMAGE_IDS:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 211
    iget-object v3, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->image:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    :goto_0
    iget-object v3, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    iput p1, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    .line 222
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    return-object v2

    .line 213
    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    .restart local v1       #text:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/layar/adapters/SocialsAdapter;->mHostedServiceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v3, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->image:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 216
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isAnyChecked()Z
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 139
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 137
    const/4 v1, 0x1

    goto :goto_1

    .line 135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;

    .line 229
    .local v0, holder:Lcom/layar/adapters/SocialsAdapter$ViewHolder;
    iget v1, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    sget-object v2, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 230
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->mListner:Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;

    if-eqz v1, :cond_5

    .line 231
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isLinked:[Z

    iget v2, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_5

    .line 232
    sget-object v1, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    iget v2, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-object v1, v1, v2

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget v2, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    .line 233
    iget-boolean v1, p0, Lcom/layar/adapters/SocialsAdapter;->isEmailChecked:Z

    if-eqz v1, :cond_2

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/layar/adapters/SocialsAdapter;->isEmailChecked:Z

    .line 234
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget v2, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    iget-object v3, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget v4, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    move v3, v5

    :goto_1
    aput-boolean v3, v1, v2

    .line 244
    :cond_0
    :goto_2
    iget-object v1, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->image:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget v3, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 245
    iget-object v1, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget v3, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 247
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->mListner:Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->mListner:Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;

    invoke-virtual {p0}, Lcom/layar/adapters/SocialsAdapter;->isAnyChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;->setShareEnable(Z)V

    .line 249
    :cond_1
    return-void

    :cond_2
    move v1, v6

    .line 233
    goto :goto_0

    :cond_3
    move v3, v6

    .line 234
    goto :goto_1

    .line 236
    :cond_4
    invoke-virtual {p0}, Lcom/layar/adapters/SocialsAdapter;->rememberPrefered()V

    .line 237
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->mListner:Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;

    sget-object v2, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    iget v3, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;->startAuthorization(Ljava/lang/String;)V

    goto :goto_2

    .line 240
    :cond_5
    iget-object v1, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget v2, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    iget-object v3, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget v4, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_6

    move v3, v5

    :goto_3
    aput-boolean v3, v1, v2

    .line 241
    sget-object v1, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    iget v2, v0, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-object v1, v1, v2

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-boolean v1, p0, Lcom/layar/adapters/SocialsAdapter;->isEmailChecked:Z

    if-eqz v1, :cond_7

    move v1, v5

    :goto_4
    iput-boolean v1, p0, Lcom/layar/adapters/SocialsAdapter;->isEmailChecked:Z

    goto :goto_2

    :cond_6
    move v3, v6

    .line 240
    goto :goto_3

    :cond_7
    move v1, v6

    .line 242
    goto :goto_4
.end method

.method public refresh()V
    .locals 7

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/layar/adapters/SocialsAdapter;->refreshLinkedSocials()V

    .line 170
    iget-object v4, p0, Lcom/layar/adapters/SocialsAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 171
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 177
    return-void

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/layar/adapters/SocialsAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 173
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/adapters/SocialsAdapter$ViewHolder;

    .line 174
    .local v1, holder:Lcom/layar/adapters/SocialsAdapter$ViewHolder;
    iget-object v4, v1, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->image:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget v6, v1, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 175
    iget-object v4, v1, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget v6, v1, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public rememberPrefered()V
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/layar/adapters/SocialsAdapter;->getCount()I

    move-result v0

    .line 253
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 260
    return-void

    .line 254
    :cond_0
    sget-object v2, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->isLinked:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    .line 255
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->mSocialManager:Lcom/layar/data/social/SocialManager;

    sget-object v3, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/layar/data/social/SocialManager;->setSocialsPrefered(Ljava/lang/String;Z)V

    .line 253
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->mHostedServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/layar/adapters/SocialsAdapter;->mSocialManager:Lcom/layar/data/social/SocialManager;

    iget-object v3, p0, Lcom/layar/adapters/SocialsAdapter;->mHostedServiceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/layar/data/social/SocialManager;->setSocialsPrefered(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public setChangeLister(Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/layar/adapters/SocialsAdapter;->mListner:Lcom/layar/adapters/SocialsAdapter$SocialAdapterChangeLister;

    .line 103
    return-void
.end method

.method public setChecked([Z)V
    .locals 7
    .parameter "inputCheck"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    .line 92
    iget-object v4, p0, Lcom/layar/adapters/SocialsAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 93
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 99
    return-void

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/layar/adapters/SocialsAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/adapters/SocialsAdapter$ViewHolder;

    .line 96
    .local v1, holder:Lcom/layar/adapters/SocialsAdapter$ViewHolder;
    iget-object v4, v1, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->image:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget v6, v1, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v4, v1, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/layar/adapters/SocialsAdapter;->isChecked:[Z

    iget v6, v1, Lcom/layar/adapters/SocialsAdapter$ViewHolder;->position:I

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setEmailChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/layar/adapters/SocialsAdapter;->isEmailChecked:Z

    .line 67
    return-void
.end method

.method public setEmailChoosedMessage(I)V
    .locals 7
    .parameter "ammount"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/layar/adapters/SocialsAdapter;->refreshLinkedSocials()V

    .line 181
    iget-object v4, p0, Lcom/layar/adapters/SocialsAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 182
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 194
    return-void

    .line 183
    :cond_0
    sget-object v4, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, "email"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    iget-object v4, p0, Lcom/layar/adapters/SocialsAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 185
    .local v3, v:Landroid/view/View;
    const v4, 0x7f070025

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 186
    .local v2, text:Landroid/widget/TextView;
    if-nez p1, :cond_2

    .line 187
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #v:Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .restart local v2       #text:Landroid/widget/TextView;
    .restart local v3       #v:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/layar/adapters/SocialsAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f09012f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setEmailCountText(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 71
    return-void
.end method
