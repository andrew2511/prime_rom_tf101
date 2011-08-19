.class public Lcom/android/contacts/detail/ContactDetailFragment;
.super Landroid/app/Fragment;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailFragment$Listener;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field private mAllRestricted:Z

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactDataDisplayed:Z

.field private mContext:Landroid/content/Context;

.field private mCopyGalToLocalButton:Landroid/widget/Button;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private final mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mGroupEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPhone:Z

.field private mHasSip:Z

.field private mHasSms:Z

.field private mHeaderView:Lcom/android/contacts/detail/ContactDetailHeaderView;

.field private mHeaderViewListener:Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;

.field private mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNumPhoneNumbers:I

.field private mOptionsMenuEditable:Z

.field private mOptionsMenuOptions:Z

.field private mOptionsMenuShareable:Z

.field private mOtherEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryPhoneUri:Landroid/net/Uri;

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRelationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSmsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionAnimationRequested:Z

.field private mView:Landroid/view/View;

.field private final mWritableRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWritableRawContactIds:Ljava/util/ArrayList;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntries:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    .line 1255
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1289
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHeaderViewListener:Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;

    .line 186
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makePersonalCopy()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/model/AccountType$DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-static {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->buildDataString(Lcom/android/contacts/model/AccountType$DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method private bindData()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 289
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 342
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 297
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTransitionAnimationRequested:Z

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v2, :cond_3

    move v2, v4

    :goto_1
    invoke-static {v1, v2}, Lcom/android/contacts/widget/TransitionAnimationView;->startAnimation(Landroid/view/View;Z)V

    .line 299
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTransitionAnimationRequested:Z

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v1, :cond_4

    .line 303
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 298
    goto :goto_1

    .line 308
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHeaderView:Lcom/android/contacts/detail/ContactDetailHeaderView;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactDetailHeaderView;->loadData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 311
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->buildEntries()V

    .line 314
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 315
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 316
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 317
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 318
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 320
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-nez v1, :cond_6

    .line 321
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    .line 322
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 329
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 330
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryExportSupport()I

    move-result v0

    .line 331
    .local v0, exportSupport:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    if-ne v0, v4, :cond_7

    .line 333
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCopyGalToLocalButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    .end local v0           #exportSupport:I
    :goto_3
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 324
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 335
    .restart local v0       #exportSupport:I
    :cond_7
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCopyGalToLocalButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 338
    .end local v0           #exportSupport:I
    :cond_8
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCopyGalToLocalButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method private static buildDataString(Lcom/android/contacts/model/AccountType$DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "kind"
    .parameter "values"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v1, p0, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 616
    :goto_0
    return-object v1

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v1, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 616
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final buildEntries()V
    .locals 53

    .prologue
    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 354
    .local v39, numSections:I
    const/16 v31, 0x0

    .local v31, i:I
    :goto_0
    move/from16 v0, v31

    move/from16 v1, v39

    if-ge v0, v1, :cond_0

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSections:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 354
    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    .line 358
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 360
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mAllRestricted:Z

    .line 361
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 362
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mWritableRawContactIds:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v21

    .line 369
    .local v21, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 585
    :cond_1
    :goto_1
    return-void

    .line 373
    :cond_2
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v28, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/Entity;

    .line 375
    .local v25, entity:Landroid/content/Entity;
    invoke-virtual/range {v25 .. v25}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v24

    .line 376
    .local v24, entValues:Landroid/content/ContentValues;
    const-string v5, "account_type"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 377
    .local v20, accountType:Ljava/lang/String;
    const-string v5, "_id"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    .line 380
    .local v42, rawContactId:J
    const-string v5, "is_restricted"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v44

    .line 381
    .local v44, restricted:Ljava/lang/Integer;
    if-eqz v44, :cond_9

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 382
    .local v37, isRestricted:Z
    :goto_2
    if-nez v37, :cond_4

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mAllRestricted:Z

    .line 384
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v51

    .line 388
    .local v51, type:Lcom/android/contacts/model/AccountType;
    if-eqz v51, :cond_6

    move-object/from16 v0, v51

    iget-boolean v0, v0, Lcom/android/contacts/model/AccountType;->readOnly:Z

    move v5, v0

    if-nez v5, :cond_7

    .line 389
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mWritableRawContactIds:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_7
    invoke-virtual/range {v25 .. v25}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/content/Entity$NamedContentValues;

    .line 393
    .local v49, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v49

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object v10, v0

    .line 394
    .local v10, entryValues:Landroid/content/ContentValues;
    const-string v5, "raw_contact_id"

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 396
    const-string v5, "_id"

    invoke-virtual {v10, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 397
    .local v8, dataId:J
    const-string v5, "mimetype"

    invoke-virtual {v10, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, mimeType:Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 400
    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 401
    const-string v5, "data1"

    invoke-virtual {v10, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    .line 402
    .local v27, groupId:Ljava/lang/Long;
    if-eqz v27, :cond_8

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getGroupMetaData()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object v2, v5

    move-wide v3, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V

    goto :goto_3

    .line 381
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v8           #dataId:J
    .end local v10           #entryValues:Landroid/content/ContentValues;
    .end local v27           #groupId:Ljava/lang/Long;
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v37           #isRestricted:Z
    .end local v49           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v51           #type:Lcom/android/contacts/model/AccountType;
    :cond_9
    const/4 v5, 0x0

    move/from16 v37, v5

    goto/16 :goto_2

    .line 408
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v8       #dataId:J
    .restart local v10       #entryValues:Landroid/content/ContentValues;
    .restart local v33       #i$:Ljava/util/Iterator;
    .restart local v37       #isRestricted:Z
    .restart local v49       #subValue:Landroid/content/Entity$NamedContentValues;
    .restart local v51       #type:Lcom/android/contacts/model/AccountType;
    :cond_a
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v7

    .line 410
    .local v7, kind:Lcom/android/contacts/model/AccountType$DataKind;
    if-eqz v7, :cond_8

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v12

    invoke-static/range {v5 .. v13}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/AccountType$DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v26

    .line 416
    .local v26, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    move/from16 v29, v5

    .line 417
    .local v29, hasData:Z
    :goto_4
    const-string v5, "is_super_primary"

    invoke-virtual {v10, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v50

    .line 418
    .local v50, superPrimary:Ljava/lang/Integer;
    if-eqz v50, :cond_d

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    move/from16 v38, v5

    .line 420
    .local v38, isSuperPrimary:Z
    :goto_5
    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 422
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    if-eqz v29, :cond_13

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 425
    const-string v5, "normalized_number"

    invoke-virtual {v10, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 427
    .local v41, phoneNumberE164:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    move-object v6, v0

    .end local v6           #mimeType:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, v41

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    .line 429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    move v5, v0

    if-eqz v5, :cond_e

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v8, "tel"

    .end local v8           #dataId:J
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .end local v10           #entryValues:Landroid/content/ContentValues;
    move-result-object v8

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v40, v5

    .line 431
    .local v40, phoneIntent:Landroid/content/Intent;
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    move v5, v0

    if-eqz v5, :cond_f

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v8, "smsto"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v47, v5

    .line 435
    .local v47, smsIntent:Landroid/content/Intent;
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    move v5, v0

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    move v5, v0

    if-eqz v5, :cond_10

    .line 436
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 437
    move-object/from16 v0, v47

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 438
    iget v5, v7, Lcom/android/contacts/model/AccountType$DataKind;->iconAltRes:I

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryActionIcon:I

    .line 450
    :goto_8
    if-eqz v38, :cond_b

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->uri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 452
    :cond_b
    move/from16 v0, v38

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isPrimary:Z

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 416
    .end local v29           #hasData:Z
    .end local v38           #isSuperPrimary:Z
    .end local v40           #phoneIntent:Landroid/content/Intent;
    .end local v41           #phoneNumberE164:Ljava/lang/String;
    .end local v47           #smsIntent:Landroid/content/Intent;
    .end local v50           #superPrimary:Ljava/lang/Integer;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v8       #dataId:J
    .restart local v10       #entryValues:Landroid/content/ContentValues;
    :cond_c
    const/4 v5, 0x0

    move/from16 v29, v5

    goto/16 :goto_4

    .line 418
    .restart local v29       #hasData:Z
    .restart local v50       #superPrimary:Ljava/lang/Integer;
    :cond_d
    const/4 v5, 0x0

    move/from16 v38, v5

    goto/16 :goto_5

    .line 429
    .end local v6           #mimeType:Ljava/lang/String;
    .restart local v38       #isSuperPrimary:Z
    .restart local v41       #phoneNumberE164:Ljava/lang/String;
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v40, v5

    goto :goto_6

    .line 431
    .end local v8           #dataId:J
    .end local v10           #entryValues:Landroid/content/ContentValues;
    .restart local v40       #phoneIntent:Landroid/content/Intent;
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v47, v5

    goto :goto_7

    .line 439
    .restart local v47       #smsIntent:Landroid/content/Intent;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    move v5, v0

    if-eqz v5, :cond_11

    .line 440
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    goto :goto_8

    .line 441
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    move v5, v0

    if-eqz v5, :cond_12

    .line 442
    move-object/from16 v0, v47

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 443
    iget v5, v7, Lcom/android/contacts/model/AccountType$DataKind;->iconAltRes:I

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    goto :goto_8

    .line 445
    :cond_12
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 446
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    goto :goto_8

    .line 454
    .end local v40           #phoneIntent:Landroid/content/Intent;
    .end local v41           #phoneNumberE164:Ljava/lang/String;
    .end local v47           #smsIntent:Landroid/content/Intent;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v8       #dataId:J
    .restart local v10       #entryValues:Landroid/content/ContentValues;
    :cond_13
    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v29, :cond_14

    .line 456
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    .end local v6           #mimeType:Ljava/lang/String;
    const-string v7, "mailto"

    .end local v7           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-static {v7, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 458
    move/from16 v0, v38

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isPrimary:Z

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/contacts/util/DataStatus;

    .line 463
    .local v48, status:Lcom/android/contacts/util/DataStatus;
    if-eqz v48, :cond_8

    .line 464
    const-string v35, "vnd.android.cursor.item/im"

    .line 465
    .local v35, imMime:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/im"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v13

    .line 467
    .local v13, imKind:Lcom/android/contacts/model/AccountType$DataKind;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object v11, v0

    const-string v12, "vnd.android.cursor.item/im"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v18

    move-wide v14, v8

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v19}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/AccountType$DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v34

    .line 470
    .local v34, imEntry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    move-object/from16 v0, v34

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;Landroid/content/ContentValues;)V

    .line 471
    const/4 v5, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v48

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 474
    .end local v13           #imKind:Lcom/android/contacts/model/AccountType$DataKind;
    .end local v34           #imEntry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .end local v35           #imMime:Ljava/lang/String;
    .end local v48           #status:Lcom/android/contacts/util/DataStatus;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #kind:Lcom/android/contacts/model/AccountType$DataKind;
    :cond_14
    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    if-eqz v29, :cond_15

    .line 476
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->maxLines:I

    .line 477
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    .end local v6           #mimeType:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "geo:0,0?q="

    .end local v8           #dataId:J
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 480
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .restart local v8       #dataId:J
    :cond_15
    const-string v5, "vnd.android.cursor.item/im"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    if-eqz v29, :cond_17

    .line 482
    move-object/from16 v0, v26

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;Landroid/content/ContentValues;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .end local v6           #mimeType:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/contacts/util/DataStatus;

    .line 486
    .restart local v48       #status:Lcom/android/contacts/util/DataStatus;
    if-eqz v48, :cond_16

    .line 487
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 489
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 490
    .end local v48           #status:Lcom/android/contacts/util/DataStatus;
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_17
    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 493
    const-string v5, "vnd.android.cursor.item/nickname"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz v29, :cond_1a

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getNameRawContactId()J

    move-result-wide v11

    cmp-long v5, v11, v42

    if-nez v5, :cond_18

    const/4 v5, 0x1

    move/from16 v36, v5

    .line 498
    .local v36, isNameRawContact:Z
    :goto_9
    if-eqz v36, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_19

    .end local v6           #mimeType:Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v22, v5

    .line 502
    .local v22, duplicatesTitle:Z
    :goto_a
    if-nez v22, :cond_8

    .line 503
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->uri:Landroid/net/Uri;

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 495
    .end local v22           #duplicatesTitle:Z
    .end local v36           #isNameRawContact:Z
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_18
    const/4 v5, 0x0

    move/from16 v36, v5

    goto :goto_9

    .line 498
    .end local v6           #mimeType:Ljava/lang/String;
    .restart local v36       #isNameRawContact:Z
    :cond_19
    const/4 v5, 0x0

    move/from16 v22, v5

    goto :goto_a

    .line 506
    .end local v36           #isNameRawContact:Z
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_1a
    const-string v5, "vnd.android.cursor.item/note"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    if-eqz v29, :cond_1b

    .line 508
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->uri:Landroid/net/Uri;

    .line 509
    const/16 v5, 0x64

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->maxLines:I

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 511
    :cond_1b
    const-string v5, "vnd.android.cursor.item/website"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    if-eqz v29, :cond_1c

    .line 513
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->uri:Landroid/net/Uri;

    .line 514
    const/16 v5, 0xa

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->maxLines:I

    .line 516
    :try_start_0
    new-instance v52, Landroid/net/WebAddress;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v52

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 517
    .local v52, webAddress:Landroid/net/WebAddress;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    .end local v6           #mimeType:Ljava/lang/String;
    invoke-virtual/range {v52 .. v52}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v52           #webAddress:Landroid/net/WebAddress;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 519
    :catch_0
    move-exception v5

    move-object/from16 v23, v5

    .line 520
    .local v23, e:Landroid/net/ParseException;
    const-string v5, "ContactDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t parse website: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 523
    .end local v23           #e:Landroid/net/ParseException;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #kind:Lcom/android/contacts/model/AccountType$DataKind;
    :cond_1c
    const-string v5, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    if-eqz v29, :cond_1e

    .line 525
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->uri:Landroid/net/Uri;

    .line 526
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->maxLines:I

    .line 527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    move v5, v0

    if-eqz v5, :cond_1d

    .line 528
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    .end local v6           #mimeType:Ljava/lang/String;
    const-string v7, "sip"

    .end local v7           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    move-object v8, v0

    .end local v8           #dataId:J
    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 534
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 531
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .restart local v8       #dataId:J
    :cond_1d
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 532
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    goto :goto_c

    .line 541
    :cond_1e
    const-string v5, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    if-eqz v29, :cond_1f

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    move-object v6, v0

    .end local v6           #mimeType:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    .line 543
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->uri:Landroid/net/Uri;

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 545
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_1f
    const-string v5, "vnd.android.cursor.item/relation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    if-eqz v29, :cond_20

    .line 546
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEARCH"

    .end local v6           #mimeType:Ljava/lang/String;
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 547
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    move-object v5, v0

    const-string v6, "query"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    move-object v7, v0

    .end local v7           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    move-object v5, v0

    const-string v6, "vnd.android.cursor.dir/contact"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 552
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #kind:Lcom/android/contacts/model/AccountType$DataKind;
    :cond_20
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    .end local v6           #mimeType:Ljava/lang/String;
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 553
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->uri:Landroid/net/Uri;

    move-object v6, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->mimetype:Ljava/lang/String;

    move-object v8, v0

    .end local v8           #dataId:J
    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/contacts/util/DataStatus;

    .line 557
    .restart local v48       #status:Lcom/android/contacts/util/DataStatus;
    iget-boolean v5, v7, Lcom/android/contacts/model/AccountType$DataKind;->actionBodySocial:Z

    if-eqz v5, :cond_23

    if-eqz v48, :cond_23

    const/4 v5, 0x1

    move/from16 v30, v5

    .line 558
    .local v30, hasSocial:Z
    :goto_d
    if-eqz v30, :cond_21

    .line 559
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v48

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 562
    :cond_21
    if-nez v30, :cond_22

    if-eqz v29, :cond_8

    .line 563
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 557
    .end local v30           #hasSocial:Z
    :cond_23
    const/4 v5, 0x0

    move/from16 v30, v5

    goto :goto_d

    .line 569
    .end local v7           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .end local v10           #entryValues:Landroid/content/ContentValues;
    .end local v20           #accountType:Ljava/lang/String;
    .end local v24           #entValues:Landroid/content/ContentValues;
    .end local v25           #entity:Landroid/content/Entity;
    .end local v26           #entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .end local v29           #hasData:Z
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v37           #isRestricted:Z
    .end local v38           #isSuperPrimary:Z
    .end local v42           #rawContactId:J
    .end local v44           #restricted:Ljava/lang/Integer;
    .end local v48           #status:Lcom/android/contacts/util/DataStatus;
    .end local v49           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v50           #superPrimary:Ljava/lang/Integer;
    .end local v51           #type:Lcom/android/contacts/model/AccountType;
    :cond_24
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 570
    new-instance v26, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    invoke-direct/range {v26 .. v26}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>()V

    .line 571
    .restart local v26       #entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    invoke-static/range {v28 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 572
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v45, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v46

    .line 574
    .local v46, size:I
    const/16 v31, 0x0

    :goto_e
    move/from16 v0, v31

    move/from16 v1, v46

    if-ge v0, v1, :cond_26

    .line 575
    if-eqz v31, :cond_25

    .line 576
    const-string v5, ", "

    move-object/from16 v0, v45

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_25
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    add-int/lit8 v31, v31, 0x1

    goto :goto_e

    .line 580
    :cond_26
    const-string v5, "mimetype"

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->mimetype:Ljava/lang/String;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0c00fe

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->kind:Ljava/lang/String;

    .line 582
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static buildImActions(Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;Landroid/content/ContentValues;)V
    .locals 12
    .parameter "entry"
    .parameter "values"

    .prologue
    const/4 v11, 0x5

    const v10, 0x7f0200a8

    .line 625
    const-string v8, "vnd.android.cursor.item/email_v2"

    const-string v9, "mimetype"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 627
    .local v6, isEmail:Z
    if-nez v6, :cond_1

    invoke-static {p1}, Lcom/android/contacts/detail/ContactDetailFragment;->isProtocolValid(Landroid/content/ContentValues;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    if-eqz v6, :cond_2

    const-string v8, "data1"

    :goto_1
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, data:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 636
    if-eqz v6, :cond_3

    move v7, v11

    .line 638
    .local v7, protocol:I
    :goto_2
    if-ne v7, v11, :cond_7

    .line 639
    const-string v8, "chat_capability"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 640
    .local v2, chatCapabilityObj:Ljava/lang/Integer;
    if-nez v2, :cond_4

    const/4 v8, 0x0

    move v1, v8

    .line 641
    .local v1, chatCapability:I
    :goto_3
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->chatCapability:I

    .line 642
    and-int/lit8 v8, v1, 0x4

    if-eqz v8, :cond_5

    .line 643
    iput v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    .line 644
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 646
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?call"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto :goto_0

    .line 631
    .end local v1           #chatCapability:I
    .end local v2           #chatCapabilityObj:Ljava/lang/Integer;
    .end local v3           #data:Ljava/lang/String;
    .end local v7           #protocol:I
    :cond_2
    const-string v8, "data1"

    goto :goto_1

    .line 636
    .restart local v3       #data:Ljava/lang/String;
    :cond_3
    const-string v8, "data5"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v7, v8

    goto :goto_2

    .line 640
    .restart local v2       #chatCapabilityObj:Ljava/lang/Integer;
    .restart local v7       #protocol:I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v1, v8

    goto :goto_3

    .line 648
    .restart local v1       #chatCapability:I
    :cond_5
    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_6

    .line 650
    iput v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    .line 651
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 653
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?call"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 656
    :cond_6
    iput v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    .line 657
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 662
    .end local v1           #chatCapability:I
    .end local v2           #chatCapabilityObj:Ljava/lang/Integer;
    :cond_7
    const-string v8, "data6"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, host:Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 666
    invoke-static {v7}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v4

    .line 669
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 670
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, authority:Ljava/lang/String;
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    const-string v9, "imto"

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 673
    .local v5, imUri:Landroid/net/Uri;
    iput v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    .line 674
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v8, v9, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private createCopy(Landroid/accounts/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getContentValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onCreateRawContactRequested(Ljava/util/ArrayList;Landroid/accounts/Account;)V

    .line 1184
    :cond_0
    return-void
.end method

.method private handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V
    .locals 5
    .parameter
    .parameter
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, groupMetaData:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    if-nez p2, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupMetaData;

    .line 598
    .local v0, group:Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-nez v3, :cond_2

    .line 599
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->isFavorites()Z

    move-result v3

    if-nez v3, :cond_0

    .line 600
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 602
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static isProtocolValid(Landroid/content/ContentValues;)Z
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 680
    const-string v2, "data5"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, protocolString:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, v3

    .line 689
    :goto_0
    return v2

    .line 685
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    const/4 v2, 0x1

    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 687
    goto :goto_0
.end method

.method private makePersonalCopy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1137
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-nez v0, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryExportSupport()I

    move-result v0

    .line 1142
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1144
    :pswitch_0
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryAccountName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Landroid/accounts/Account;)V

    goto :goto_0

    .line 1149
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1151
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Landroid/accounts/Account;)V

    goto :goto_0

    .line 1158
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1159
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Landroid/accounts/Account;)V

    goto :goto_0

    .line 1163
    :cond_2
    new-instance v0, Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;-><init>()V

    .line 1164
    invoke-virtual {v0, p0, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1165
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SelectAccountDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleKeyDown(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1212
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v4

    .line 1249
    :goto_0
    return v0

    .line 1215
    :sswitch_0
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1217
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 1226
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1227
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-static {v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->access$800(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    .line 1228
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    if-ne v1, v2, :cond_3

    .line 1230
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 1231
    goto :goto_0

    .line 1233
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 1235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1237
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 1238
    goto :goto_0

    :cond_3
    move v0, v4

    .line 1240
    goto :goto_0

    .line 1244
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onDeleteRequested(Landroid/net/Uri;)V

    :cond_4
    move v0, v3

    .line 1245
    goto :goto_0

    .line 1221
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1212
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public isContactEditable()Z
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactOptionsChangeEnabled()Z
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactShareable()Z
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllRestricted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 2

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOptionsMenuOptions:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isContactOptionsChangeEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOptionsMenuEditable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isContactEditable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOptionsMenuShareable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isContactShareable()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUri(Landroid/net/Uri;)V
    .locals 4
    .parameter "lookupUri"

    .prologue
    const/4 v3, 0x1

    .line 269
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 275
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactDataDisplayed:Z

    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTransitionAnimationRequested:Z

    .line 276
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactDataDisplayed:Z

    .line 277
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 279
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 280
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onAccountChosen(Landroid/accounts/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 1177
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Landroid/accounts/Account;)V

    .line 1178
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 1173
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 261
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 266
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 214
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 215
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 200
    if-eqz p1, :cond_0

    .line 201
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 203
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1049
    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1050
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 220
    const v0, 0x7f040009

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->setHasOptionsMenu(Z)V

    .line 224
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 226
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f070033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailHeaderView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHeaderView:Lcom/android/contacts/detail/ContactDetailHeaderView;

    .line 227
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHeaderView:Lcom/android/contacts/detail/ContactDetailHeaderView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHeaderViewListener:Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailHeaderView;->setListener(Lcom/android/contacts/detail/ContactDetailHeaderView$Listener;)V

    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    .line 230
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 231
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCopyGalToLocalButton:Landroid/widget/Button;

    .line 238
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCopyGalToLocalButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 1188
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-nez v2, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-static {v2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->access$800(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    .line 1190
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 1191
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    .line 1192
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 1193
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-interface {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1198
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-nez v0, :cond_0

    move v0, v3

    .line 1208
    :goto_0
    return v0

    .line 1199
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;

    .line 1200
    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    .line 1201
    :cond_1
    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    .line 1204
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1206
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01a5

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1208
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1094
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v3

    .line 1133
    :goto_1
    return v0

    .line 1096
    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 1100
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onDeleteRequested(Landroid/net/Uri;)V

    :cond_1
    move v0, v4

    .line 1101
    goto :goto_1

    .line 1104
    :sswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    .line 1105
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/contacts/ContactOptionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1106
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1107
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 1108
    goto :goto_1

    .line 1111
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllRestricted:Z

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    .line 1112
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_1

    .line 1114
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    .line 1115
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1117
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00f6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1123
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1126
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v4

    .line 1130
    goto :goto_1

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00f7

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1094
    :sswitch_data_0
    .sparse-switch
        0x7f0700cd -> :sswitch_1
        0x7f0700d6 -> :sswitch_0
        0x7f0700d7 -> :sswitch_3
        0x7f0700d8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isContactOptionsChangeEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOptionsMenuOptions:Z

    .line 1061
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isContactEditable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOptionsMenuEditable:Z

    .line 1062
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isContactShareable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOptionsMenuShareable:Z

    .line 1066
    const v4, 0x7f0700d8

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1067
    .local v2, optionsMenu:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOptionsMenuOptions:Z

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1069
    const v4, 0x7f0700d6

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1070
    .local v1, editMenu:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOptionsMenuEditable:Z

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1072
    const v4, 0x7f0700cd

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1073
    .local v0, deleteMenu:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOptionsMenuEditable:Z

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1075
    const v4, 0x7f0700d7

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1076
    .local v3, shareMenu:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOptionsMenuShareable:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1077
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 209
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 251
    return-void
.end method
