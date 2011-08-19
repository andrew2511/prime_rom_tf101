.class Lcom/google/android/gm/provider/LabelManager$LabelFactory;
.super Ljava/lang/Object;
.source "LabelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/LabelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LabelFactory"
.end annotation


# instance fields
.field final mAccount:Ljava/lang/String;

.field final mCanonicalNameIndex:I

.field final mColorIndex:I

.field final mContext:Landroid/content/Context;

.field final mHiddenLabelIndex:I

.field final mIdIndex:I

.field final mLabelCountBehaviorIndex:I

.field final mLabelSyncPolicyIndex:I

.field final mNameIndex:I

.field final mNumConversationsIndex:I

.field final mNumUnreadConversationsIndex:I

.field final mSystemLabelNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mContext:Landroid/content/Context;

    .line 340
    iput-object p2, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mAccount:Ljava/lang/String;

    .line 341
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mIdIndex:I

    .line 342
    const-string v0, "canonicalName"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mCanonicalNameIndex:I

    .line 343
    const-string v0, "name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNameIndex:I

    .line 344
    const-string v0, "numConversations"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNumConversationsIndex:I

    .line 346
    const-string v0, "numUnreadConversations"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNumUnreadConversationsIndex:I

    .line 348
    const-string v0, "color"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mColorIndex:I

    .line 349
    const-string v0, "hidden"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mHiddenLabelIndex:I

    .line 350
    const-string v0, "labelCountDisplayBehavior"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mLabelCountBehaviorIndex:I

    .line 352
    const-string v0, "labelSyncPolicy"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mLabelSyncPolicyIndex:I

    .line 355
    invoke-static {p1}, Lcom/google/android/gm/provider/Label;->getSystemLabelNameMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mSystemLabelNameMap:Ljava/util/Map;

    .line 356
    return-void
.end method


# virtual methods
.method newLabel(Landroid/database/Cursor;)Lcom/google/android/gm/provider/Label;
    .locals 14
    .parameter "cursor"

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, label:Lcom/google/android/gm/provider/Label;
    if-eqz p1, :cond_0

    .line 367
    iget v1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mIdIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 368
    .local v3, labelId:J
    iget v1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mCanonicalNameIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, canonicalName:Ljava/lang/String;
    iget v1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNameIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, name:Ljava/lang/String;
    iget v1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNumConversationsIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 371
    .local v8, numConversations:I
    iget v1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mNumUnreadConversationsIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 372
    .local v9, numUnreadConversations:I
    iget v1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mHiddenLabelIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v10, v1

    .line 373
    .local v10, isHiddenLabel:Z
    :goto_0
    iget v1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mColorIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, color:Ljava/lang/String;
    iget v1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mLabelCountBehaviorIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 375
    .local v11, labelCountBehavior:I
    iget v1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mLabelSyncPolicyIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 377
    .local v12, labelSyncPolicy:I
    new-instance v0, Lcom/google/android/gm/provider/Label;

    .end local v0           #label:Lcom/google/android/gm/provider/Label;
    iget-object v1, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mAccount:Ljava/lang/String;

    iget-object v13, p0, Lcom/google/android/gm/provider/LabelManager$LabelFactory;->mSystemLabelNameMap:Ljava/util/Map;

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gm/provider/Label;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIILjava/util/Map;)V

    .line 381
    .end local v3           #labelId:J
    .end local v5           #canonicalName:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #color:Ljava/lang/String;
    .end local v8           #numConversations:I
    .end local v9           #numUnreadConversations:I
    .end local v10           #isHiddenLabel:Z
    .end local v11           #labelCountBehavior:I
    .end local v12           #labelSyncPolicy:I
    .restart local v0       #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    return-object v0

    .line 372
    .restart local v3       #labelId:J
    .restart local v5       #canonicalName:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v8       #numConversations:I
    .restart local v9       #numUnreadConversations:I
    :cond_1
    const/4 v1, 0x0

    move v10, v1

    goto :goto_0
.end method
