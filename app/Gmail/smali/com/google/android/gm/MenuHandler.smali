.class public Lcom/google/android/gm/MenuHandler;
.super Ljava/lang/Object;
.source "MenuHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/MenuHandler$ActivityCallback;,
        Lcom/google/android/gm/MenuHandler$HelpCallback;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String;

.field private static final ARCHIVABLE_LABELS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/google/android/gm/MenuHandler;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mActiveUndoOperation:Lcom/google/android/gm/UndoOperation;

.field private mActivity:Landroid/app/Activity;

.field private mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

.field mAddOrRemoveLabelMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

.field private mDisplayedLabel:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mResetSpannable:Z

.field private final mShortcutSpannable:Landroid/text/SpannableStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ACCOUNT_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/MenuHandler;->ACCOUNT_KEY:Ljava/lang/String;

    .line 858
    new-instance v0, Lcom/google/android/gm/MenuHandler$5;

    invoke-direct {v0}, Lcom/google/android/gm/MenuHandler$5;-><init>()V

    sput-object v0, Lcom/google/android/gm/MenuHandler;->ARCHIVABLE_LABELS:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v1, Lcom/google/android/gm/MenuHandler$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/MenuHandler$1;-><init>(Lcom/google/android/gm/MenuHandler;)V

    iput-object v1, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    .line 135
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/MenuHandler;->mAddOrRemoveLabelMenuItems:Ljava/util/Map;

    .line 964
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    .line 966
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gm/MenuHandler;->mResetSpannable:Z

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v0

    .line 217
    .local v0, gmail:Lcom/google/android/gm/provider/Gmail;
    new-instance v1, Lcom/google/android/gm/BulkOperationHelper;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gm/BulkOperationHelper;-><init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/provider/Gmail;)V

    iput-object v1, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/MenuHandler;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/MenuHandler$ActivityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/BulkOperationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/MenuHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/MenuHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    return-object v0
.end method

.method private areAllConversationsImportant(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v0, 0x1

    .line 517
    .local v0, allImportant:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    .line 518
    .local v1, ci:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail;->isImportant(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 519
    const/4 v0, 0x0

    .line 523
    .end local v1           #ci:Lcom/google/android/gm/ConversationInfo;
    :cond_1
    return v0
.end method

.method public static areAllConversationsStarred(Ljava/util/Collection;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v0, 0x1

    .line 506
    .local v0, allStarred:Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    .line 507
    .local v1, ci:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v3

    const-string v4, "^t"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 512
    .end local v1           #ci:Lcom/google/android/gm/ConversationInfo;
    :cond_1
    return v0
.end method

.method public static displayAutoAdvanceDialogAndPerformAction(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 11
    .parameter "context"
    .parameter "operation"

    .prologue
    .line 1209
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v1

    .line 1211
    .local v1, persistence:Lcom/google/android/gm/Persistence;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a000f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1213
    .local v6, autoAdvanceDisplayOptions:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0011

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1215
    .local v3, autoAdvanceOptionValues:[Ljava/lang/String;
    invoke-virtual {v1, p0}, Lcom/google/android/gm/Persistence;->getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1216
    .local v8, currentValue:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1217
    .local v7, currentIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v2, v3

    if-ge v9, v2, :cond_0

    .line 1218
    aget-object v2, v3, v9

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1219
    move v7, v9

    .line 1224
    :cond_0
    move v4, v7

    .line 1225
    .local v4, initialIndex:I
    new-instance v10, Lcom/google/android/gm/MenuHandler$6;

    invoke-direct {v10, v1, p0, v3, p1}, Lcom/google/android/gm/MenuHandler$6;-><init>(Lcom/google/android/gm/Persistence;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1238
    .local v10, listClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/google/android/gm/MenuHandler$7;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler$7;-><init>(Lcom/google/android/gm/Persistence;Landroid/content/Context;[Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 1249
    .local v0, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d00d9

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v4, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f0d0024

    invoke-virtual {v2, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1252
    return-void

    .line 1217
    .end local v0           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v4           #initialIndex:I
    .end local v10           #listClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gm/MenuHandler;
    .locals 1
    .parameter "context"

    .prologue
    .line 226
    sget-object v0, Lcom/google/android/gm/MenuHandler;->sInstance:Lcom/google/android/gm/MenuHandler;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/google/android/gm/MenuHandler;

    invoke-direct {v0, p0}, Lcom/google/android/gm/MenuHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gm/MenuHandler;->sInstance:Lcom/google/android/gm/MenuHandler;

    .line 229
    :cond_0
    sget-object v0, Lcom/google/android/gm/MenuHandler;->sInstance:Lcom/google/android/gm/MenuHandler;

    return-object v0
.end method

.method private static getRemovableLabel(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter "displayedLabel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-static {p0}, Lcom/google/android/gm/MenuHandler;->getYButtonLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, yLabel:Ljava/lang/String;
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getYButtonIcon(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "label"

    .prologue
    .line 921
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, canonicalName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 924
    .local v1, resources:Landroid/content/res/Resources;
    const-string v2, "^k"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 937
    :goto_0
    return-object v2

    .line 927
    :cond_0
    const-string v2, "^r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 928
    const v2, 0x7f020060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 929
    :cond_1
    const-string v2, "^s"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 931
    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 932
    :cond_2
    invoke-static {v0}, Lcom/google/android/gm/MenuHandler;->shouldShowArchiveOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 933
    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 934
    :cond_3
    const-string v2, "^t"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 935
    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 937
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getYButtonLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "displayedLabel"

    .prologue
    .line 895
    invoke-static {p0}, Lcom/google/android/gm/MenuHandler;->shouldShowArchiveOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    const-string v0, "^i"

    .line 898
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getYButtonText(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "label"

    .prologue
    .line 903
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, canonicalName:Ljava/lang/String;
    const-string v1, "^k"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 916
    :goto_0
    return-object v1

    .line 907
    :cond_0
    const-string v1, "^r"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    const v1, 0x7f0d0056

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 909
    :cond_1
    const-string v1, "^s"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 910
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 911
    :cond_2
    invoke-static {v0}, Lcom/google/android/gm/MenuHandler;->shouldShowArchiveOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 912
    const v1, 0x7f0d002e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 913
    :cond_3
    const-string v1, "^t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 914
    const v1, 0x7f0d002d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 916
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d008a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private muteConversationList(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 627
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 628
    .local v0, op:Lcom/google/android/gm/BulkOperationHelper;
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const-string v4, "^g"

    invoke-static {v1, v2, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 630
    .local v3, muteLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v3, :cond_0

    .line 631
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const v7, 0x7f0e00a6

    move-object v5, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 635
    :cond_0
    return-void
.end method

.method private performActionWithConfirmation(ILjava/lang/CharSequence;IILandroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "titleId"
    .parameter "message"
    .parameter "positiveButtonId"
    .parameter "negativeButtonId"
    .parameter "onClickListener"
    .parameter "skipConfirmationDialog"

    .prologue
    const/4 v2, 0x0

    .line 653
    if-eqz p6, :cond_0

    .line 654
    const/4 v0, 0x0

    invoke-interface {p5, v2, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 660
    :goto_0
    return-void

    .line 656
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private performSync()V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    .line 606
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->startSync(Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public static prepareDeleteButton(Landroid/content/Context;Lcom/google/android/gm/ConversationListContext;Landroid/widget/Button;)Z
    .locals 4
    .parameter "context"
    .parameter "listContext"
    .parameter "button"

    .prologue
    const/4 v3, 0x0

    .line 703
    const-string v1, "^k"

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 704
    .local v0, displayDelete:Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 705
    return v0

    .end local v0           #displayDelete:Z
    :cond_0
    move v0, v3

    .line 703
    goto :goto_0

    .line 704
    .restart local v0       #displayDelete:Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public static prepareYButton(Landroid/content/Context;Lcom/google/android/gm/ConversationListContext;Landroid/widget/Button;)Z
    .locals 2
    .parameter "context"
    .parameter "listContext"
    .parameter "button"

    .prologue
    const/4 v1, 0x0

    .line 877
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v1

    .line 886
    :goto_0
    return v0

    .line 882
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 883
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/MenuHandler;->getYButtonText(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 886
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldDisplayAutoAdvanceDialog(Landroid/content/Context;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 1185
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v1

    .line 1186
    .local v1, persistence:Lcom/google/android/gm/Persistence;
    const/4 v0, 0x0

    .line 1187
    .local v0, operationWouldAutoAdvance:Z
    invoke-virtual {v1, p0}, Lcom/google/android/gm/Persistence;->getHasUserSetAutoAdvanceSetting(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1200
    :cond_0
    :goto_0
    return v0

    .line 1196
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1189
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0043 -> :sswitch_0
        0x7f0e005d -> :sswitch_0
        0x7f0e00a5 -> :sswitch_0
        0x7f0e00a6 -> :sswitch_0
        0x7f0e00aa -> :sswitch_0
        0x7f0e00b0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static shouldShowArchiveOption(Ljava/lang/String;)Z
    .locals 1
    .parameter "displayLabel"

    .prologue
    .line 871
    const-string v0, "^all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gm/MenuHandler;->ARCHIVABLE_LABELS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowMuteOption(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .parameter "displayedLabel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const-string v0, "^iim"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^i"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "^g"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 10
    .parameter "operations"
    .parameter
    .parameter "showProgressDialog"
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;Z",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 799
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gm/BulkOperationHelper;->addOrRemoveLabel(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 802
    return-void
.end method

.method public addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Lcom/google/android/gm/ConversationInfo;ZILcom/google/android/gm/CommandListener;)V
    .locals 7
    .parameter "label"
    .parameter "added"
    .parameter "conversation"
    .parameter "showProgressDialog"
    .parameter "opId"
    .parameter "commandListener"

    .prologue
    .line 773
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Ljava/util/Collection;ZILcom/google/android/gm/CommandListener;)V

    .line 775
    return-void
.end method

.method public addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Ljava/util/Collection;ZILcom/google/android/gm/CommandListener;)V
    .locals 7
    .parameter "label"
    .parameter "added"
    .parameter
    .parameter "showProgressDialog"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/Label;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;ZI",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 780
    .local p3, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v1, Lcom/google/android/gm/LabelOperations;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 782
    return-void
.end method

.method public applyStar(Ljava/util/Collection;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-static {p1}, Lcom/google/android/gm/MenuHandler;->areAllConversationsStarred(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v4, v1

    .line 679
    .local v4, newState:Z
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 681
    .local v0, op:Lcom/google/android/gm/BulkOperationHelper;
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const-string v5, "^t"

    invoke-static {v1, v2, v5}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 682
    .local v3, starLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v3, :cond_0

    .line 683
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const v7, 0x7f0e00a8

    const/4 v8, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 687
    :cond_0
    return-void

    .line 678
    .end local v0           #op:Lcom/google/android/gm/BulkOperationHelper;
    .end local v3           #starLabel:Lcom/google/android/gm/provider/Label;
    .end local v4           #newState:Z
    :cond_1
    const/4 v1, 0x0

    move v4, v1

    goto :goto_0
.end method

.method public archive(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 11
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->getConfirmArchive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "^i"

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    move v10, v0

    .line 825
    .local v10, skipConfirmationDialog:Z
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 827
    .local v3, label:Lcom/google/android/gm/provider/Label;
    if-eqz v10, :cond_3

    .line 828
    if-eqz p2, :cond_1

    .line 829
    const v0, 0x7f0e00a5

    invoke-interface {p2, v0}, Lcom/google/android/gm/CommandListener;->onCommandAccepted(I)V

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/BulkOperationHelper;->performYButtonAction(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/CommandListener;)V

    .line 856
    :goto_1
    return-void

    .line 822
    .end local v3           #label:Lcom/google/android/gm/provider/Label;
    .end local v10           #skipConfirmationDialog:Z
    :cond_2
    const/4 v0, 0x0

    move v10, v0

    goto :goto_0

    .line 836
    .restart local v3       #label:Lcom/google/android/gm/provider/Label;
    .restart local v10       #skipConfirmationDialog:Z
    :cond_3
    const v5, 0x7f0d0049

    .line 837
    .local v5, titleId:I
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f0002

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v6

    .line 839
    .local v6, message:Ljava/lang/CharSequence;
    const v7, 0x7f0d002e

    .line 840
    .local v7, positiveButtonId:I
    const v8, 0x7f0d004b

    .line 842
    .local v8, negativeButtonId:I
    new-instance v9, Lcom/google/android/gm/MenuHandler$4;

    invoke-direct {v9, p0, p2, v3, p1}, Lcom/google/android/gm/MenuHandler$4;-><init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;)V

    .local v9, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    move-object v4, p0

    .line 854
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gm/MenuHandler;->performActionWithConfirmation(ILjava/lang/CharSequence;IILandroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_1
.end method

.method public attach(Landroid/app/Activity;Lcom/google/android/gm/MenuHandler$ActivityCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "activityCallback"
    .parameter "displayedLabel"
    .parameter "account"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    .line 241
    iput-object p2, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    .line 242
    iput-object p3, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    .line 243
    iput-object p4, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    invoke-virtual {v0}, Lcom/google/android/gm/BulkOperationHelper;->onActivityAttached()V

    .line 249
    return-void
.end method

.method public changeLabels()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 623
    return-void
.end method

.method public delete(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/MenuHandler;->delete(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    .line 710
    return-void
.end method

.method public delete(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const v1, 0x7f0d004a

    .line 716
    .local v1, titleId:I
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    const/high16 v7, 0x7f0f

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-static {v0, v7, v8}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, message:Ljava/lang/CharSequence;
    const v3, 0x7f0d0030

    .line 719
    .local v3, positiveButtonId:I
    const v4, 0x7f0d004c

    .line 720
    .local v4, negativeButtonId:I
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    iget-object v7, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Lcom/google/android/gm/Persistence;->getConfirmDelete(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    .line 723
    .local v6, skipConfirmationDialog:Z
    :goto_0
    new-instance v5, Lcom/google/android/gm/MenuHandler$2;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/gm/MenuHandler$2;-><init>(Lcom/google/android/gm/MenuHandler;Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    .local v5, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    move-object v0, p0

    .line 737
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->performActionWithConfirmation(ILjava/lang/CharSequence;IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 739
    return-void

    .line 720
    .end local v5           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v6           #skipConfirmationDialog:Z
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    invoke-virtual {v0}, Lcom/google/android/gm/BulkOperationHelper;->onActivityDetached()V

    .line 272
    return-void
.end method

.method public expunge(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const v1, 0x7f0d0051

    .line 750
    .local v1, titleId:I
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0f0001

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-static {v0, v7, v8}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, message:Ljava/lang/CharSequence;
    const v3, 0x7f0d0056

    .line 753
    .local v3, positiveButtonId:I
    const v4, 0x7f0d004e

    .line 754
    .local v4, negativeButtonId:I
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    iget-object v7, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Lcom/google/android/gm/Persistence;->getConfirmDelete(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    .line 757
    .local v6, skipConfirmationDialog:Z
    :goto_0
    new-instance v5, Lcom/google/android/gm/MenuHandler$3;

    invoke-direct {v5, p0, p2, p1}, Lcom/google/android/gm/MenuHandler$3;-><init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;Ljava/util/Collection;)V

    .local v5, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    move-object v0, p0

    .line 767
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->performActionWithConfirmation(ILjava/lang/CharSequence;IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 769
    return-void

    .line 754
    .end local v5           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v6           #skipConfirmationDialog:Z
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBackgroundTaskHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1119
    invoke-static {}, Lcom/google/android/gm/BulkOperationHelper;->getBulkOperationHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUndoOperation()Lcom/google/android/gm/UndoOperation;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActiveUndoOperation:Lcom/google/android/gm/UndoOperation;

    return-object v0
.end method

.method public hasUndoableOperation()Z
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActiveUndoOperation:Lcom/google/android/gm/UndoOperation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markReadUnread(Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 692
    .local v0, op:Lcom/google/android/gm/BulkOperationHelper;
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const-string v4, "^u"

    invoke-static {v1, v2, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 693
    .local v3, unreadLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v3, :cond_0

    .line 694
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const v7, 0x7f0e005d

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->toggleLabel(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 698
    :cond_0
    return-void
.end method

.method public maybeShowToast(Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;)V
    .locals 7
    .parameter "account"
    .parameter "labelOperations"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1056
    .local p3, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyTrash()Z

    move-result v4

    .line 1057
    .local v4, isTrash:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplySpam()Z

    move-result v3

    .line 1058
    .local v3, isSpam:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyMute()Z

    move-result v2

    .line 1059
    .local v2, isMute:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyArchive()Z

    move-result v1

    .line 1062
    .local v1, isArchive:Z
    if-nez v4, :cond_0

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v1, :cond_1

    .line 1063
    iget-object v5, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    invoke-static {v5, p2, p3, v6}, Lcom/google/android/gm/UndoOperation;->getActionDescription(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, description:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1066
    iget-object v5, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1069
    .end local v0           #description:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public moveToMagicInbox(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v2, 0x1

    .line 489
    iget-object v8, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    .line 490
    .local v8, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    .line 492
    .local v7, account:Ljava/lang/String;
    new-instance v1, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v1}, Lcom/google/android/gm/LabelOperations;-><init>()V

    .line 493
    .local v1, operations:Lcom/google/android/gm/LabelOperations;
    const-string v0, "^i"

    invoke-static {v8, v7, v0}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 494
    const-string v0, "^^important"

    invoke-static {v8, v7, v0}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 495
    const-string v0, "^iim"

    invoke-static {v8, v7, v0}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 496
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0e00a9

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 499
    return-void
.end method

.method public mute(Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z
    .locals 1
    .parameter
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 639
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/android/gm/MenuHandler;->shouldShowMuteOption(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0, p1, p3}, Lcom/google/android/gm/MenuHandler;->muteConversationList(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    .line 642
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onEndBulkOperation()V
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-interface {v0}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->onEndBulkOperation()V

    .line 1164
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"
    .parameter "account"
    .parameter
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/KeyEvent;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p4, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p5, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 972
    const/4 v6, 0x0

    .line 973
    .local v6, handled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1001
    iget-boolean v0, p0, Lcom/google/android/gm/MenuHandler;->mResetSpannable:Z

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1003
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1004
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1007
    :cond_0
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1011
    const v1, 0x7f0e00aa

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(ILjava/util/Collection;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z

    .line 1014
    iput-boolean v7, p0, Lcom/google/android/gm/MenuHandler;->mResetSpannable:Z

    .line 1015
    const/4 v6, 0x1

    .line 1026
    :cond_1
    :goto_0
    return v6

    .line 977
    :sswitch_0
    const v1, 0x7f0e00a5

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(ILjava/util/Collection;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z

    .line 979
    iput-boolean v7, p0, Lcom/google/android/gm/MenuHandler;->mResetSpannable:Z

    .line 980
    const/4 v6, 0x1

    .line 981
    goto :goto_0

    .line 985
    :sswitch_1
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gm/MenuHandler;->mute(Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    move-result v6

    .line 986
    goto :goto_0

    .line 990
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/gm/MenuHandler;->showLabels()V

    .line 991
    const/4 v6, 0x1

    .line 992
    goto :goto_0

    .line 996
    :sswitch_3
    invoke-virtual {p0}, Lcom/google/android/gm/MenuHandler;->changeLabels()V

    .line 997
    const/4 v6, 0x1

    .line 998
    goto :goto_0

    .line 1021
    :cond_2
    iput-boolean v4, p0, Lcom/google/android/gm/MenuHandler;->mResetSpannable:Z

    goto :goto_0

    .line 973
    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_2
        0x29 -> :sswitch_1
        0x32 -> :sswitch_3
        0x35 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemSelected(ILjava/util/Collection;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z
    .locals 3
    .parameter "menuItemId"
    .parameter
    .parameter
    .parameter "htmlConversationActivity"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;Z",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const/4 v2, 0x1

    .line 543
    sparse-switch p1, :sswitch_data_0

    .line 598
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(ILandroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v0

    .line 601
    :goto_0
    return v0

    .line 545
    :sswitch_0
    invoke-virtual {p0, p2, p5}, Lcom/google/android/gm/MenuHandler;->performYButtonAction(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    move v0, v2

    .line 546
    goto :goto_0

    .line 549
    :sswitch_1
    if-nez p4, :cond_1

    .line 550
    invoke-direct {p0, p2, p5}, Lcom/google/android/gm/MenuHandler;->muteConversationList(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    move v0, v2

    .line 551
    goto :goto_0

    .line 556
    :sswitch_2
    const-string v0, "^r"

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0, p2, p5}, Lcom/google/android/gm/MenuHandler;->expunge(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    :goto_1
    move v0, v2

    .line 561
    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {p0, p2, p5}, Lcom/google/android/gm/MenuHandler;->delete(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_1

    .line 564
    :sswitch_3
    invoke-virtual {p0}, Lcom/google/android/gm/MenuHandler;->changeLabels()V

    move v0, v2

    .line 565
    goto :goto_0

    .line 568
    :sswitch_4
    invoke-virtual {p0, p2, p3, p5}, Lcom/google/android/gm/MenuHandler;->markReadUnread(Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)V

    move v0, v2

    .line 569
    goto :goto_0

    .line 572
    :sswitch_5
    invoke-virtual {p0, p2, p4, p5}, Lcom/google/android/gm/MenuHandler;->reportSpam(Ljava/util/Collection;ZLcom/google/android/gm/CommandListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 573
    goto :goto_0

    .line 578
    :sswitch_6
    invoke-virtual {p0, p2}, Lcom/google/android/gm/MenuHandler;->applyStar(Ljava/util/Collection;)V

    move v0, v2

    .line 579
    goto :goto_0

    .line 583
    :sswitch_7
    invoke-direct {p0}, Lcom/google/android/gm/MenuHandler;->performSync()V

    move v0, v2

    .line 584
    goto :goto_0

    .line 587
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-interface {v0}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->enterSearchMode()V

    move v0, v2

    .line 588
    goto :goto_0

    .line 594
    :sswitch_9
    invoke-virtual {p0, p1, p2, p5}, Lcom/google/android/gm/MenuHandler;->updateImportantStates(ILjava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    .line 601
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 543
    :sswitch_data_0
    .sparse-switch
        0x7f0e0043 -> :sswitch_2
        0x7f0e0074 -> :sswitch_8
        0x7f0e00a5 -> :sswitch_0
        0x7f0e00a6 -> :sswitch_1
        0x7f0e00a7 -> :sswitch_4
        0x7f0e00a8 -> :sswitch_6
        0x7f0e00a9 -> :sswitch_3
        0x7f0e00aa -> :sswitch_5
        0x7f0e00ab -> :sswitch_7
        0x7f0e00c6 -> :sswitch_9
        0x7f0e00c7 -> :sswitch_9
    .end sparse-switch
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;Lcom/google/android/gm/ConversationInfo;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z
    .locals 6
    .parameter "item"
    .parameter "conversationInfos"
    .parameter
    .parameter "htmlConversationActivity"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Lcom/google/android/gm/ConversationInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;Z",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 536
    .local p3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gm/ConversationInfo;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(ILjava/util/Collection;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;Ljava/util/Collection;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z
    .locals 6
    .parameter "item"
    .parameter
    .parameter
    .parameter "htmlConversationActivity"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;Z",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 529
    .local p2, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(ILjava/util/Collection;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z

    move-result v0

    return v0
.end method

.method onPrepareImportantMenuItem(Landroid/view/Menu;Ljava/util/Collection;)V
    .locals 6
    .parameter "menu"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v5, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gm/Utils;->getPriorityInboxServerEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 437
    .local v2, priorityInboxEnabled:Z
    const v5, 0x7f0e00c6

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 438
    .local v0, markImportantItem:Landroid/view/MenuItem;
    const v5, 0x7f0e00c7

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 443
    .local v1, markNotImportantItem:Landroid/view/MenuItem;
    if-nez v2, :cond_2

    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, showImportantItem:Z
    const/4 v4, 0x0

    .line 461
    .local v4, showNotImportantItem:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 462
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 464
    :cond_0
    if-eqz v1, :cond_1

    .line 465
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 467
    :cond_1
    return-void

    .line 452
    .end local v3           #showImportantItem:Z
    .end local v4           #showNotImportantItem:Z
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/gm/MenuHandler;->areAllConversationsImportant(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 453
    const/4 v3, 0x0

    .line 454
    .restart local v3       #showImportantItem:Z
    const/4 v4, 0x1

    .restart local v4       #showNotImportantItem:Z
    goto :goto_0

    .line 456
    .end local v3           #showImportantItem:Z
    .end local v4           #showNotImportantItem:Z
    :cond_3
    const/4 v3, 0x1

    .line 457
    .restart local v3       #showImportantItem:Z
    const/4 v4, 0x0

    .restart local v4       #showNotImportantItem:Z
    goto :goto_0
.end method

.method public onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;Z)V
    .locals 6
    .parameter "menu"
    .parameter
    .parameter "conversation"
    .parameter "displayedLabel"
    .parameter "htmlConversationActivity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/ConversationInfo;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gm/ConversationInfo;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 331
    return-void
.end method

.method public onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 9
    .parameter "menu"
    .parameter
    .parameter
    .parameter "displayedLabel"
    .parameter "htmlConversationActivity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    .local p3, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const v7, 0x7f0e0043

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 344
    .local v0, deleteMenuItem:Landroid/view/MenuItem;
    const v7, 0x7f0e00a5

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 346
    .local v6, yMenuItem:Landroid/view/MenuItem;
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gm/MenuHandler;->onPrepareYMenuItem(Landroid/view/Menu;Ljava/util/Map;Ljava/lang/String;)V

    .line 349
    const v7, 0x7f0e00a7

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 350
    .local v2, item:Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 351
    const-string v7, "^u"

    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 352
    .local v1, hasUnread:Z
    iget-object v7, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_7

    const v8, 0x7f0d0029

    :goto_0
    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 353
    if-eqz v1, :cond_8

    const v7, 0x7f020055

    :goto_1
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 358
    .end local v1           #hasUnread:Z
    :cond_0
    const v7, 0x7f0e00aa

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 359
    .local v5, reportSpam:Landroid/view/MenuItem;
    if-eqz v5, :cond_1

    .line 360
    const-string v7, "^s"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x1

    :goto_2
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 366
    :cond_1
    if-eqz v0, :cond_3

    .line 367
    if-nez p5, :cond_a

    const-string v7, "^k"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_2
    const/4 v7, 0x1

    :goto_3
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    :cond_3
    const v7, 0x7f0e00a6

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 375
    .local v3, mute:Landroid/view/MenuItem;
    if-eqz v3, :cond_4

    .line 376
    invoke-static {p4, p2}, Lcom/google/android/gm/MenuHandler;->shouldShowMuteOption(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 380
    :cond_4
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gm/MenuHandler;->onPrepareStarMenuItem(Landroid/view/Menu;Ljava/util/Collection;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gm/MenuHandler;->onPrepareImportantMenuItem(Landroid/view/Menu;Ljava/util/Collection;)V

    .line 386
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 387
    if-nez p5, :cond_b

    const/4 v7, 0x1

    :goto_4
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 390
    :cond_5
    const v7, 0x7f0e00ab

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 391
    .local v4, refresh:Landroid/view/MenuItem;
    if-eqz v4, :cond_6

    .line 392
    iget-object v7, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-interface {v7}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->taskInProgress()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 393
    const v7, 0x7f040003

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 398
    :cond_6
    :goto_5
    return-void

    .line 352
    .end local v3           #mute:Landroid/view/MenuItem;
    .end local v4           #refresh:Landroid/view/MenuItem;
    .end local v5           #reportSpam:Landroid/view/MenuItem;
    .restart local v1       #hasUnread:Z
    :cond_7
    const v8, 0x7f0d002a

    goto :goto_0

    .line 353
    :cond_8
    const v7, 0x7f020056

    goto :goto_1

    .line 360
    .end local v1           #hasUnread:Z
    .restart local v5       #reportSpam:Landroid/view/MenuItem;
    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    .line 367
    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    .line 387
    .restart local v3       #mute:Landroid/view/MenuItem;
    :cond_b
    const/4 v7, 0x0

    goto :goto_4

    .line 395
    .restart local v4       #refresh:Landroid/view/MenuItem;
    :cond_c
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method onPrepareStarMenuItem(Landroid/view/Menu;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 2
    .parameter "menu"
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 406
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const v1, 0x7f0e00a8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 407
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 411
    const-string v1, "^t"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "^k"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "^s"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    invoke-static {p2}, Lcom/google/android/gm/MenuHandler;->areAllConversationsStarred(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 420
    const v1, 0x7f0d002d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 421
    const v1, 0x7f02005f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 423
    :cond_3
    const v1, 0x7f0d002c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 424
    const v1, 0x7f02005e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onPrepareYMenuItem(Landroid/view/Menu;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .parameter "menu"
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const v4, 0x7f0e00a5

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 305
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 307
    invoke-static {p3, p2}, Lcom/google/android/gm/MenuHandler;->getRemovableLabel(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, yButtonCanonicalName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 309
    .local v3, yButtonLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v2, :cond_0

    .line 310
    iget-object v4, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 312
    :cond_0
    if-eqz v3, :cond_2

    .line 313
    iget-object v4, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/google/android/gm/MenuHandler;->getYButtonText(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 314
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 315
    iget-object v4, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/google/android/gm/MenuHandler;->getYButtonIcon(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 316
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 323
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #yButtonCanonicalName:Ljava/lang/String;
    .end local v3           #yButtonLabel:Lcom/google/android/gm/provider/Label;
    :cond_1
    :goto_0
    return-void

    .line 320
    .restart local v2       #yButtonCanonicalName:Ljava/lang/String;
    .restart local v3       #yButtonLabel:Lcom/google/android/gm/provider/Label;
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 950
    sget-object v1, Lcom/google/android/gm/MenuHandler;->ACCOUNT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    .line 952
    invoke-static {p1}, Lcom/google/android/gm/UndoOperation;->restoreFromExtras(Landroid/os/Bundle;)Lcom/google/android/gm/UndoOperation;

    move-result-object v0

    .line 953
    .local v0, savedOperation:Lcom/google/android/gm/UndoOperation;
    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {p0, v0}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    .line 957
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 942
    sget-object v0, Lcom/google/android/gm/MenuHandler;->ACCOUNT_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Lcom/google/android/gm/MenuHandler;->hasUndoableOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/google/android/gm/MenuHandler;->getUndoOperation()Lcom/google/android/gm/UndoOperation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/UndoOperation;->saveToExtras(Landroid/os/Bundle;)V

    .line 947
    :cond_0
    return-void
.end method

.method public onStartBulkOperation()V
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-interface {v0}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->onStartBulkOperation()V

    .line 1157
    return-void
.end method

.method public onStartDragMode()V
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-interface {v0}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->onStartDragMode()V

    .line 1171
    return-void
.end method

.method public onStopDragMode()V
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-interface {v0}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->onStopDragMode()V

    .line 1178
    return-void
.end method

.method public performUndo(Lcom/google/android/gm/UndoOperation;)V
    .locals 8
    .parameter "undoOp"

    .prologue
    const/4 v7, 0x0

    .line 1105
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/google/android/gm/UndoOperation;->mAccount:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gm/UndoOperation;->mOperations:Lcom/google/android/gm/LabelOperations;

    iget-object v4, p1, Lcom/google/android/gm/UndoOperation;->mConversations:Ljava/util/Collection;

    iget-object v5, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/BulkOperationHelper;->performUndoOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 1112
    invoke-virtual {p0, v7}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    .line 1113
    return-void
.end method

.method public performYButtonAction(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/MenuHandler;->archive(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    .line 812
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1083
    return-void
.end method

.method public prepareLabelDialog(Lcom/google/android/gm/ApplyRemoveLabelDialog;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 1
    .parameter "dialog"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/ApplyRemoveLabelDialog;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    .local p3, collectionIds:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->onPrepare(Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;)V

    .line 648
    return-void
.end method

.method public reportSpam(Ljava/util/Collection;ZLcom/google/android/gm/CommandListener;)Z
    .locals 9
    .parameter
    .parameter "htmlConversationActivity"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;Z",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v4, 0x1

    .line 664
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 665
    .local v0, op:Lcom/google/android/gm/BulkOperationHelper;
    if-nez p2, :cond_1

    .line 666
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const-string v5, "^s"

    invoke-static {v1, v2, v5}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 667
    .local v3, spamLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v3, :cond_0

    .line 668
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const v7, 0x7f0e00aa

    move-object v5, p1

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    :cond_0
    move v1, v4

    .line 674
    .end local v3           #spamLabel:Lcom/google/android/gm/provider/Label;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendLabelChangedMessage(JZLcom/google/android/gm/provider/Label;)V
    .locals 6
    .parameter "conversationId"
    .parameter "add"
    .parameter "label"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1039
    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    if-ne p3, v4, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v4, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1041
    .local v1, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1042
    .local v0, conversationLabel:Landroid/os/Bundle;
    const-string v2, "CONVERSATION_KEY"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1043
    const-string v2, "LABEL_KEY"

    invoke-virtual {p4}, Lcom/google/android/gm/provider/Label;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1047
    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1048
    return-void

    .end local v0           #conversationLabel:Landroid/os/Bundle;
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    move v3, v5

    .line 1039
    goto :goto_0
.end method

.method public sendLabelsDoneMessage(Lcom/google/android/gm/LabelOperations;)V
    .locals 4
    .parameter "labelOperations"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/google/android/gm/LabelOperations;->serialize(Lcom/google/android/gm/LabelOperations;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1079
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "displayedLabel"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setUndoOperation(Lcom/google/android/gm/UndoOperation;)V
    .locals 3
    .parameter "operation"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1098
    return-void
.end method

.method public showLabels()V
    .locals 3

    .prologue
    .line 613
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/google/android/gm/LabelsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 615
    return-void
.end method

.method updateImportantStates(ILjava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 10
    .parameter "menuItemId"
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 471
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 472
    .local v0, op:Lcom/google/android/gm/BulkOperationHelper;
    invoke-direct {p0, p2}, Lcom/google/android/gm/MenuHandler;->areAllConversationsImportant(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "^^unimportant"

    move-object v9, v1

    .line 474
    .local v9, canonicalNameToApply:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    invoke-static {v1, v2, v9}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 477
    .local v3, labelToApply:Lcom/google/android/gm/provider/Label;
    if-eqz v3, :cond_0

    .line 478
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    move-object v5, p2

    move v7, p1

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 482
    :cond_0
    return-void

    .line 472
    .end local v3           #labelToApply:Lcom/google/android/gm/provider/Label;
    .end local v9           #canonicalNameToApply:Ljava/lang/String;
    :cond_1
    const-string v1, "^^important"

    move-object v9, v1

    goto :goto_0
.end method
