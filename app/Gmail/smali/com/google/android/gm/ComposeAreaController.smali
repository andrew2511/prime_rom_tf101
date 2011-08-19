.class public Lcom/google/android/gm/ComposeAreaController;
.super Ljava/lang/Object;
.source "ComposeAreaController.java"

# interfaces
.implements Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;
.implements Lcom/google/android/gm/QuotedTextView$RespondInlineListener;
.implements Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    }
.end annotation


# static fields
.field static final ALL_EXTRAS:[Ljava/lang/String;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAttachmentsChanged:Z

.field private final mController:Lcom/google/android/gm/ComposeController;

.field private final mParent:Landroid/app/Activity;

.field private mRecipientErrorDialog:Landroid/app/AlertDialog;

.field private mRootView:Lcom/google/android/gm/ComposeArea;

.field private mShowCcBcc:Ljava/lang/Boolean;

.field private mValidator:Lcom/android/common/Rfc822Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "to"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bcc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/ComposeAreaController;->ALL_EXTRAS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;Lcom/google/android/gm/Persistence;)V
    .locals 2
    .parameter "parent"
    .parameter "controller"
    .parameter "prefs"

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    .line 119
    iput-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mShowCcBcc:Ljava/lang/Boolean;

    .line 121
    iput-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mValidator:Lcom/android/common/Rfc822Validator;

    .line 123
    iput-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    .line 133
    iput-object p2, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ComposeAreaController;)Lcom/google/android/gm/ComposeArea;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/gm/ComposeAreaController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private addAddressToList(Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 4
    .parameter "address"
    .parameter "list"

    .prologue
    .line 949
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 957
    :cond_0
    return-void

    .line 952
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 954
    .local v1, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 954
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addAddressesToList(Ljava/util/List;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 5
    .parameter
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Landroid/widget/MultiAutoCompleteTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 990
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/util/Rfc822Token;

    .line 991
    .local v3, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 992
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 994
    const-string v4, ", "

    invoke-virtual {p2, v4}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 991
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 997
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_1
    return-void
.end method

.method private addAttachment(Landroid/net/Uri;Ljava/lang/String;Z)I
    .locals 11
    .parameter "uri"
    .parameter "contentType"
    .parameter "doSave"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
        }
    .end annotation

    .prologue
    .line 663
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 664
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-nez p2, :cond_0

    const-string p2, ""

    .line 666
    :cond_0
    new-instance v6, Lcom/google/android/gm/provider/Gmail$Attachment;

    invoke-direct {v6}, Lcom/google/android/gm/provider/Gmail$Attachment;-><init>()V

    .line 668
    .local v6, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    const/4 v1, 0x0

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    .line 669
    iput-object p2, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    .line 670
    const/4 v1, 0x0

    iput v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    .line 671
    iput-object p2, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->simpleContentType:Ljava/lang/String;

    .line 672
    sget-object v1, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    .line 673
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->localFileExtras(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    .line 675
    const/4 v10, 0x0

    .line 677
    .local v10, metadataCursor:Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_size"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 680
    if-eqz v10, :cond_2

    .line 682
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    .line 684
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    :cond_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 730
    :cond_2
    :goto_0
    iget-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 731
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    .line 743
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gmail_max_attachment_size_bytes"

    const/high16 v3, 0x190

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 748
    .local v9, maxSize:I
    iget v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    if-le v1, v9, :cond_a

    .line 749
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->showAttachmentTooBigToast()V

    .line 750
    new-instance v1, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;

    const-string v2, "Attachment too large to attach"

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;-><init>(Lcom/google/android/gm/ComposeAreaController;Ljava/lang/String;)V

    throw v1

    .line 687
    .end local v9           #maxSize:I
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 690
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 699
    .local v8, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v1, "_display_name"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gm/ComposeAreaController;->getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 701
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 702
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 705
    :cond_5
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 710
    :cond_6
    :try_start_5
    const-string v1, "_size"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gm/ComposeAreaController;->getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 712
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 713
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 719
    :goto_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 705
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    .line 716
    :cond_8
    :try_start_6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/ComposeAreaController;->getSizeFromFile(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 719
    :catchall_2
    move-exception v1

    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 721
    .end local v8           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    move-object v7, v1

    .line 725
    .local v7, e:Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    const v2, 0x7f0d00f6

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 727
    new-instance v1, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;

    const-string v2, "Security Exception from attachment uri"

    invoke-direct {v1, p0, v2, v7}, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;-><init>(Lcom/google/android/gm/ComposeAreaController;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 751
    .end local v7           #e:Ljava/lang/SecurityException;
    .restart local v9       #maxSize:I
    :cond_a
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/AttachmentsView;->getTotalAttachmentsSize()I

    move-result v1

    iget v2, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    add-int/2addr v1, v2

    if-le v1, v9, :cond_b

    .line 753
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->showAttachmentTooBigToast()V

    .line 754
    new-instance v1, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;

    const-string v2, "Attachment too large to attach"

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;-><init>(Lcom/google/android/gm/ComposeAreaController;Ljava/lang/String;)V

    throw v1

    .line 756
    :cond_b
    invoke-virtual {p0, v6}, Lcom/google/android/gm/ComposeAreaController;->addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V

    .line 757
    if-eqz p3, :cond_c

    .line 758
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/gm/ComposeController;->doSave(Z)V

    .line 762
    :cond_c
    iget v1, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    return v1
.end method

.method private addBccAddresses(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getBccList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/ComposeAreaController;->addAddressesToList(Ljava/util/Collection;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 939
    return-void
.end method

.method private addCcAddresses(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ComposeAreaController;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getCcList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addAddressesToList(Ljava/util/List;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 935
    return-void
.end method

.method private addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 929
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, toAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ComposeAreaController;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/android/gm/ComposeAreaController;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeArea;->getCcList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gm/ComposeAreaController;->addCcAddressesToList(Ljava/util/List;Ljava/util/List;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 931
    return-void
.end method

.method private static addRecipients(Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter
    .parameter "addresses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1193
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1195
    .local v1, email:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1196
    const-string v4, "\"\""

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1193
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1199
    .end local v1           #email:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addToAddresses(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 925
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getToList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/ComposeAreaController;->addAddressesToList(Ljava/util/Collection;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 926
    return-void
.end method

.method private cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "string"
    .parameter "removeEmptyDoubleQuotes"

    .prologue
    .line 428
    if-eqz p2, :cond_0

    const-string v0, "\"\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private clearComposeArea()V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->clear()V

    .line 1119
    return-void
.end method

.method private convertToHashSet(Ljava/util/List;)Ljava/util/HashSet;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 979
    .local p1, list:Ljava/util/List;,"Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 980
    .local v0, hash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/util/Rfc822Token;

    .line 981
    .local v3, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 982
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 981
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 985
    .end local v1           #i:I
    .end local v3           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_1
    return-object v0
.end method

.method private focusSubject()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->focusSubject()V

    .line 223
    return-void
.end method

.method private getOptionalColumn(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "contentResolver"
    .parameter "uri"
    .parameter "columnName"

    .prologue
    .line 825
    const/4 v6, 0x0

    .line 827
    .local v6, result:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 831
    :goto_0
    return-object v6

    .line 828
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initAttachments(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1123
    .local p1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 1124
    .local v0, a:Lcom/google/android/gm/provider/Gmail$Attachment;
    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gm/AttachmentsView;->addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V

    goto :goto_0

    .line 1126
    .end local v0           #a:Lcom/google/android/gm/provider/Gmail$Attachment;
    :cond_0
    return-void
.end method

.method private initBodyFromRefMessage(Lcom/google/android/gm/provider/Gmail$MessageCursor;IZ)V
    .locals 11
    .parameter "refCursor"
    .parameter "action"
    .parameter "forward"

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 438
    invoke-static {v7, v10}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    .line 439
    .local v2, dateFormat:Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getDateReceivedMs()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 440
    .local v1, date:Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 442
    .local v3, quotedText:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    if-ne p2, v8, :cond_2

    .line 443
    :cond_0
    const-string v4, "<div class=\"gmail_quote\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    iget-object v4, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    const v5, 0x7f0d0061

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/google/android/gm/ComposeAreaController;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    const-string v4, "<br type=\'attribution\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    const-string v4, "<blockquote class=\"gmail_quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    const-string v4, "</blockquote>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    const-string v4, "</div>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_4

    move v5, v8

    :goto_1
    invoke-virtual {p0, v4, v5}, Lcom/google/android/gm/ComposeAreaController;->setQuotedText(Ljava/lang/CharSequence;Z)V

    .line 471
    return-void

    .line 452
    :cond_2
    if-ne p2, v7, :cond_1

    .line 453
    const-string v4, "<div class=\"gmail_quote\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    iget-object v4, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    const v5, 0x7f0d0062

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/google/android/gm/ComposeAreaController;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v9}, Lcom/google/android/gm/ComposeAreaController;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, ", "

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/google/android/gm/ComposeAreaController;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, ccAddresses:[Ljava/lang/String;
    array-length v4, v0

    if-lez v4, :cond_3

    .line 462
    iget-object v4, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    const v5, 0x7f0d0063

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, ", "

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/google/android/gm/ComposeAreaController;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    :cond_3
    const-string v4, "<br type=\'attribution\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    const-string v4, "</div>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .end local v0           #ccAddresses:[Ljava/lang/String;
    :cond_4
    move v5, v9

    .line 470
    goto/16 :goto_1
.end method

.method private initRecipientsFromRefMessageCursor(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V
    .locals 7
    .parameter "account"
    .parameter "refCursor"
    .parameter "action"

    .prologue
    .line 1148
    const/4 v6, 0x2

    if-ne p3, v6, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, accountEmail:Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 1159
    .local v5, toAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getReplyToAddress()[Ljava/lang/String;

    move-result-object v3

    .line 1160
    .local v3, replyToAddresses:[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v6, v3

    if-eqz v6, :cond_2

    .line 1162
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1179
    :goto_1
    invoke-direct {p0, v5}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 1184
    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    .line 1185
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 1186
    .local v1, ccAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/google/android/gm/ComposeAreaController;->addRecipients(Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/google/android/gm/ComposeAreaController;->addRecipients(Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)V

    .line 1188
    invoke-direct {p0, v1, v5}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    .line 1164
    .end local v1           #ccAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v4

    .line 1167
    .local v4, senderAddress:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/google/android/gm/utils/CustomFromUtils;->isCustomFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1168
    .local v2, isCustomFrom:Z
    if-nez v2, :cond_3

    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/google/android/gm/provider/Gmail;->getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1171
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1176
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private showAttachmentTooBigToast()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 813
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    const v2, 0x7f0d00f6

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 814
    .local v0, t:Landroid/widget/Toast;
    const v1, 0x7f0d00f5

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 815
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 817
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 818
    return-void
.end method

.method private updateAttachments(ILjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    if-eqz v0, :cond_0

    .line 1142
    :goto_0
    return-void

    .line 1135
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1136
    invoke-direct {p0, p2}, Lcom/google/android/gm/ComposeAreaController;->initAttachments(Ljava/util/List;)V

    goto :goto_0

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 1140
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method


# virtual methods
.method addAddressesToList(Ljava/util/Collection;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 3
    .parameter
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/MultiAutoCompleteTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 943
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 944
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/google/android/gm/ComposeAreaController;->addAddressToList(Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;)V

    goto :goto_0

    .line 946
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V
    .locals 1
    .parameter "attachment"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V

    .line 911
    return-void
.end method

.method public addAttachmentAndUpdateView(Landroid/content/Intent;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 791
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    .line 792
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 793
    iput-boolean v4, p0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    .line 794
    iget-object v3, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v3}, Lcom/google/android/gm/ComposeController;->onAttachmentsChanged()V

    .line 795
    iget-object v3, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, contentType:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2, v0, v3}, Lcom/google/android/gm/ComposeAreaController;->addAttachment(Landroid/net/Uri;Ljava/lang/String;Z)I
    :try_end_0
    .catch Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .end local v0           #contentType:Ljava/lang/String;
    :goto_1
    return-void

    .line 791
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_0

    .line 798
    .restart local v0       #contentType:Ljava/lang/String;
    .restart local v2       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 800
    .local v1, e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    const-string v3, "Gmail"

    const-string v4, "Error adding attachment"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 803
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->showAttachmentTooBigToast()V

    goto :goto_1
.end method

.method protected addCcAddressesToList(Ljava/util/List;Ljava/util/List;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 6
    .parameter
    .parameter
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Landroid/widget/MultiAutoCompleteTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 964
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    .local p2, compareToList:Ljava/util/List;,"Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    invoke-direct {p0, p2}, Lcom/google/android/gm/ComposeAreaController;->convertToHashSet(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v1

    .line 965
    .local v1, compareTo:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/util/Rfc822Token;

    .line 966
    .local v4, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 967
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, address:Ljava/lang/String;
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 971
    invoke-virtual {p3, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 972
    const-string v5, ", "

    invoke-virtual {p3, v5}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 966
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 976
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_2
    return-void
.end method

.method public appendToBody(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "text"
    .parameter "withSignature"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ComposeArea;->appendToBody(Ljava/lang/CharSequence;Z)V

    .line 313
    return-void
.end method

.method public areAttachmentsSynced()Z
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/AttachmentsView;->areAttachmentsSynced()Z

    move-result v0

    return v0
.end method

.method public checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .parameter "to"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1207
    .local p2, wrongEmailsOut:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1208
    .local v1, email:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/ComposeAreaController;->mValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v4, v1}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Lcom/google/android/gm/Utils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1209
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1212
    .end local v1           #email:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public currentlyShowingBcc()Z
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    const v1, 0x7f0e0021

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentlyShowingCc()Z
    .locals 2

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    const v1, 0x7f0e001f

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentlyShowingCcBcc()Z
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    const v1, 0x7f0e001f

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected decodeEmailInUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 843
    const-string v1, "+"

    const-string v2, "%2B"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, replacePlus:Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public deleteAllAttachments()V
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/AttachmentsView;->deleteAllAttachments()V

    .line 1286
    return-void
.end method

.method public dismissAllDialogs()V
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1115
    :cond_0
    return-void
.end method

.method public focusBody()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->focusBody()V

    .line 333
    return-void
.end method

.method public getAddressesFromList(Landroid/widget/MultiAutoCompleteTextView;)[Ljava/lang/String;
    .locals 5
    .parameter "list"

    .prologue
    .line 1248
    if-nez p1, :cond_0

    .line 1249
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 1258
    :goto_0
    return-object v4

    .line 1251
    :cond_0
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->clearComposingText()V

    .line 1252
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 1253
    .local v3, tokens:[Landroid/text/util/Rfc822Token;
    array-length v0, v3

    .line 1254
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 1255
    .local v2, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1256
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 1258
    goto :goto_0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/AttachmentsView;->getAttachments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBccAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getBccList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->getAddressesFromList(Landroid/widget/MultiAutoCompleteTextView;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getBodyText()Landroid/widget/EditText;

    move-result-object v0

    .line 321
    .local v0, bodyText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    .line 323
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 325
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCcAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getCcList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->getAddressesFromList(Landroid/widget/MultiAutoCompleteTextView;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCorrectedSubject(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "action"
    .parameter "subject"
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, correctedSubject:Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 194
    const-string v1, ""

    .line 202
    .local v1, prefix:Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    move-object v0, p2

    .line 208
    :goto_1
    return-object v0

    .line 195
    .end local v1           #prefix:Ljava/lang/String;
    :cond_0
    if-ne p1, v4, :cond_1

    .line 196
    const v2, 0x7f0d0060

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 198
    .end local v1           #prefix:Ljava/lang/String;
    :cond_1
    const v2, 0x7f0d005f

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_0

    .line 205
    :cond_2
    const v2, 0x7f0d015e

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getQuotedText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getQuotedText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getSizeFromFile(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .locals 6
    .parameter "uri"
    .parameter "contentResolver"

    .prologue
    .line 767
    const/4 v2, -0x1

    .line 768
    .local v2, size:I
    const/4 v1, 0x0

    .line 770
    .local v1, file:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 771
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    long-to-int v2, v3

    .line 776
    if-eqz v1, :cond_0

    .line 777
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 783
    :cond_0
    :goto_0
    return v2

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Gmail"

    const-string v4, "Error closing file opened to obtain size."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 773
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "Gmail"

    const-string v4, "Error opening file to obtain size."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 776
    if-eqz v1, :cond_0

    .line 777
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 779
    :catch_2
    move-exception v0

    .line 780
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Gmail"

    const-string v4, "Error closing file opened to obtain size."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 775
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 776
    if-eqz v1, :cond_1

    .line 777
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 781
    :cond_1
    :goto_1
    throw v3

    .line 779
    :catch_3
    move-exception v0

    .line 780
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Gmail"

    const-string v5, "Error closing file opened to obtain size."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getToList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->getAddressesFromList(Landroid/widget/MultiAutoCompleteTextView;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideOrShowBcc(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->hideOrShowBcc(Z)V

    .line 1048
    return-void
.end method

.method public hideOrShowCcBcc(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1037
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mShowCcBcc:Ljava/lang/Boolean;

    .line 1038
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->hideOrShowCcBcc(Z)V

    .line 1039
    return-void
.end method

.method public initFromCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 6
    .parameter "draftCursor"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->clearComposeArea()V

    .line 349
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, body:Ljava/lang/String;
    const-string v2, "<div class=\"gmail_quote\">"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 354
    .local v1, quotedTextIndex:I
    if-ltz v1, :cond_1

    .line 357
    invoke-virtual {p0, v5}, Lcom/google/android/gm/ComposeAreaController;->setQuotedSectionVisibility(Z)V

    .line 358
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getForward()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/ComposeAreaController;->setQuotedText(Ljava/lang/CharSequence;Z)V

    .line 367
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAttachmentInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeAreaController;->initAttachments(Ljava/util/List;)V

    .line 369
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 370
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;)V

    .line 371
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBccAddresses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeAreaController;->addBccAddresses(Ljava/util/Collection;)V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->updateHideOrShowCcBcc()V

    .line 374
    return-void

    :cond_0
    move v3, v4

    .line 359
    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/gm/ComposeAreaController;->setQuotedSectionVisibility(Z)V

    .line 364
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method public initFromExtras(Landroid/content/Intent;)V
    .locals 28
    .parameter "intent"

    .prologue
    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 515
    .local v7, dataUri:Landroid/net/Uri;
    if-eqz v7, :cond_7

    .line 516
    const-string v25, "mailto"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 517
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->initFromMailTo(Ljava/lang/String;)V

    .line 534
    :cond_0
    :goto_0
    const-string v25, "android.intent.extra.EMAIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 535
    .local v11, extraStrings:[Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 536
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 538
    :cond_1
    const-string v25, "android.intent.extra.CC"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 539
    if-eqz v11, :cond_2

    .line 540
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;)V

    .line 542
    :cond_2
    const-string v25, "android.intent.extra.BCC"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 543
    if-eqz v11, :cond_3

    .line 544
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addBccAddresses(Ljava/util/Collection;)V

    .line 547
    :cond_3
    const-string v25, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 548
    .local v10, extraString:Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 549
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Ljava/lang/String;)V

    .line 552
    :cond_4
    sget-object v5, Lcom/google/android/gm/ComposeAreaController;->ALL_EXTRAS:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v14, :cond_c

    aget-object v9, v5, v13

    .line 553
    .local v9, extra:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 554
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 555
    .local v24, value:Ljava/lang/String;
    const-string v25, "to"

    move-object/from16 v0, v25

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 556
    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 552
    .end local v24           #value:Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 519
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #extra:Ljava/lang/String;
    .end local v10           #extraString:Ljava/lang/String;
    .end local v11           #extraStrings:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/ComposeAreaController;->clearComposeArea()V

    .line 520
    const-string v25, "gmailfrom"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 521
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v18

    .line 522
    .local v18, toText:Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/gm/ComposeArea;->setToList(Ljava/lang/String;)V

    .line 524
    const-string v25, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 531
    .end local v18           #toText:Ljava/lang/String;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/ComposeAreaController;->clearComposeArea()V

    goto/16 :goto_0

    .line 557
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #extra:Ljava/lang/String;
    .restart local v10       #extraString:Ljava/lang/String;
    .restart local v11       #extraStrings:[Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v24       #value:Ljava/lang/String;
    :cond_8
    const-string v25, "cc"

    move-object/from16 v0, v25

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 558
    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;)V

    goto :goto_2

    .line 559
    :cond_9
    const-string v25, "bcc"

    move-object/from16 v0, v25

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 560
    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addBccAddresses(Ljava/util/Collection;)V

    goto :goto_2

    .line 561
    :cond_a
    const-string v25, "subject"

    move-object/from16 v0, v25

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 562
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 563
    :cond_b
    const-string v25, "body"

    move-object/from16 v0, v25

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 564
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 569
    .end local v9           #extra:Ljava/lang/String;
    .end local v24           #value:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 570
    .local v12, extras:Landroid/os/Bundle;
    if-eqz v12, :cond_15

    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, action:Ljava/lang/String;
    const-string v25, "android.intent.extra.TEXT"

    move-object v0, v12

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 573
    .local v17, text:Ljava/lang/CharSequence;
    if-eqz v17, :cond_d

    .line 574
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V

    .line 577
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "gmail_max_attachment_size_bytes"

    const/high16 v27, 0x190

    invoke-static/range {v25 .. v27}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 579
    .local v15, maxSize:I
    const/16 v19, 0x0

    .line 582
    .local v19, totalSize:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    move/from16 v25, v0

    if-nez v25, :cond_15

    .line 583
    const-string v25, "attachments"

    move-object v0, v12

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 584
    const-string v25, "attachments"

    move-object v0, v12

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    .end local v5           #arr$:[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 585
    .local v22, uris:[Ljava/lang/String;
    move-object/from16 v5, v22

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v14, v5

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_f

    aget-object v21, v5, v13

    .line 586
    .local v21, uriString:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 587
    .local v20, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 590
    .local v6, contentType:Ljava/lang/String;
    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v6

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/ComposeAreaController;->addAttachment(Landroid/net/Uri;Ljava/lang/String;Z)I
    :try_end_0
    .catch Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 598
    .local v16, size:I
    add-int v19, v19, v16

    .line 599
    move/from16 v0, v19

    move v1, v15

    if-le v0, v1, :cond_e

    .line 600
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/ComposeAreaController;->showAttachmentTooBigToast()V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    .line 649
    .end local v4           #action:Ljava/lang/String;
    .end local v6           #contentType:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v15           #maxSize:I
    .end local v16           #size:I
    .end local v17           #text:Ljava/lang/CharSequence;
    .end local v19           #totalSize:I
    .end local v20           #uri:Landroid/net/Uri;
    .end local v21           #uriString:Ljava/lang/String;
    .end local v22           #uris:[Ljava/lang/String;
    :goto_4
    return-void

    .line 591
    .restart local v4       #action:Ljava/lang/String;
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v15       #maxSize:I
    .restart local v17       #text:Ljava/lang/CharSequence;
    .restart local v19       #totalSize:I
    .restart local v20       #uri:Landroid/net/Uri;
    .restart local v21       #uriString:Ljava/lang/String;
    .restart local v22       #uris:[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 594
    .local v8, e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    const-string v25, "Gmail"

    const-string v26, "Error adding attachment"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    goto :goto_4

    .line 585
    .end local v8           #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    .restart local v16       #size:I
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 605
    .end local v6           #contentType:Ljava/lang/String;
    .end local v16           #size:I
    .end local v20           #uri:Landroid/net/Uri;
    .end local v21           #uriString:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lcom/google/android/gm/ComposeController;->doSave(Z)V

    .line 607
    .end local v22           #uris:[Ljava/lang/String;
    :cond_10
    const-string v25, "android.intent.action.SEND"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_11

    const-string v25, "com.google.android.gm.action.AUTO_SEND"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    :cond_11
    const-string v25, "android.intent.extra.STREAM"

    move-object v0, v12

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 610
    const-string v25, "android.intent.extra.STREAM"

    move-object v0, v12

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 612
    .restart local v20       #uri:Landroid/net/Uri;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/ComposeAreaController;->addAttachment(Landroid/net/Uri;Ljava/lang/String;Z)I
    :try_end_1
    .catch Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException; {:try_start_1 .. :try_end_1} :catch_1

    .line 622
    .end local v20           #uri:Landroid/net/Uri;
    :cond_12
    const-string v25, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    const-string v25, "android.intent.extra.STREAM"

    move-object v0, v12

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 624
    const-string v25, "android.intent.extra.STREAM"

    move-object v0, v12

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 625
    .local v23, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Parcelable;

    .line 628
    .local v20, uri:Landroid/os/Parcelable;
    :try_start_2
    check-cast v20, Landroid/net/Uri;

    .end local v20           #uri:Landroid/os/Parcelable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/ComposeAreaController;->addAttachment(Landroid/net/Uri;Ljava/lang/String;Z)I
    :try_end_2
    .catch Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v16

    .line 636
    .restart local v16       #size:I
    add-int v19, v19, v16

    .line 637
    move/from16 v0, v19

    move v1, v15

    if-le v0, v1, :cond_13

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/ComposeAreaController;->showAttachmentTooBigToast()V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 613
    .end local v16           #size:I
    .end local v23           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .local v13, i$:I
    .local v20, uri:Landroid/net/Uri;
    :catch_1
    move-exception v25

    move-object/from16 v8, v25

    .line 616
    .restart local v8       #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    const-string v25, "Gmail"

    const-string v26, "Error adding attachment"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 629
    .end local v8           #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    .end local v20           #uri:Landroid/net/Uri;
    .local v13, i$:Ljava/util/Iterator;
    .restart local v23       #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :catch_2
    move-exception v25

    move-object/from16 v8, v25

    .line 632
    .restart local v8       #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    const-string v25, "Gmail"

    const-string v26, "Error adding attachment"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 643
    .end local v8           #e:Lcom/google/android/gm/ComposeAreaController$AttachmentFailureException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lcom/google/android/gm/ComposeController;->doSave(Z)V

    .line 648
    .end local v4           #action:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #maxSize:I
    .end local v17           #text:Ljava/lang/CharSequence;
    .end local v19           #totalSize:I
    .end local v23           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ComposeAreaController;->updateHideOrShowCcBcc()V

    goto/16 :goto_4
.end method

.method public initFromMailTo(Ljava/lang/String;)V
    .locals 13
    .parameter "mailToString"

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->clearComposeArea()V

    .line 858
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "foo://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 859
    .local v9, uri:Landroid/net/Uri;
    const-string v10, "?"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 860
    .local v4, index:I
    const-string v10, "mailto"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v5, v10, 0x1

    .line 864
    .local v5, length:I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    .line 865
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/google/android/gm/ComposeAreaController;->decodeEmailInUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 869
    .local v8, to:Ljava/lang/String;
    :goto_0
    const-string v10, " ,"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    .end local v8           #to:Ljava/lang/String;
    :goto_1
    const-string v10, "cc"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 875
    .local v2, cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;)V

    .line 877
    const-string v10, "to"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 878
    .local v6, otherTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 880
    const-string v10, "bcc"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 881
    .local v0, bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/android/gm/ComposeAreaController;->addBccAddresses(Ljava/util/Collection;)V

    .line 883
    const-string v10, "subject"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 884
    .local v7, subject:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 886
    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 892
    :cond_0
    :goto_2
    const-string v10, "body"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 893
    .local v1, body:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 895
    const/4 v10, 0x0

    :try_start_2
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Ljava/lang/String;)V

    .line 896
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "UTF=8"

    invoke-static {v10, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 902
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->updateHideOrShowCcBcc()V

    .line 903
    return-void

    .line 867
    .end local v0           #bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #body:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #otherTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #subject:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/google/android/gm/ComposeAreaController;->decodeEmailInUri(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    .restart local v8       #to:Ljava/lang/String;
    goto/16 :goto_0

    .line 870
    .end local v8           #to:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 871
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v10, "Gmail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " while decoding \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 887
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #otherTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #subject:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 888
    .restart local v3       #e:Ljava/io/UnsupportedEncodingException;
    const-string v10, "Gmail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " while decoding subject \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 897
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #body:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v10

    move-object v3, v10

    .line 898
    .restart local v3       #e:Ljava/io/UnsupportedEncodingException;
    const-string v10, "Gmail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " while decoding body \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public initFromRefMessage(Lcom/google/android/gm/provider/Gmail$MessageCursor;Ljava/lang/String;IZ)V
    .locals 1
    .parameter "refCursor"
    .parameter "recipientAddress"
    .parameter "action"
    .parameter "forward"

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->clearComposeArea()V

    .line 487
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->setQuotedSectionVisibility(Z)V

    .line 488
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gm/ComposeAreaController;->initRecipientsFromRefMessageCursor(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    .line 489
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    .line 490
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gm/ComposeAreaController;->initBodyFromRefMessage(Lcom/google/android/gm/provider/Gmail$MessageCursor;IZ)V

    .line 491
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAttachmentInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gm/ComposeAreaController;->updateAttachments(ILjava/util/List;)V

    .line 497
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->updateHideOrShowCcBcc()V

    .line 498
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->removeAllAttachments()V

    goto :goto_0
.end method

.method public isBlank()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->isBlank()Z

    move-result v0

    return v0
.end method

.method public isBodyEmpty()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->isBodyEmpty()Z

    move-result v0

    return v0
.end method

.method public isSubjectEmpty()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachmentAdded()V
    .locals 0

    .prologue
    .line 1270
    return-void
.end method

.method public onAttachmentDeleted()V
    .locals 1

    .prologue
    .line 1263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeAreaController;->mAttachmentsChanged:Z

    .line 1264
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v0}, Lcom/google/android/gm/ComposeController;->onAttachmentsChanged()V

    .line 1265
    return-void
.end method

.method public onRespondInline(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/ComposeAreaController;->appendToBody(Ljava/lang/CharSequence;Z)V

    .line 155
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 264
    const-string v0, "showQuotedText"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->setQuotedSectionVisibility(Z)V

    .line 265
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "inBundle"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->onSaveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 256
    return-object p1
.end method

.method public onShowHideQuotedText(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v0}, Lcom/google/android/gm/ComposeController;->onUiChanged()V

    .line 160
    return-void
.end method

.method public renderComposeArea(Lcom/google/android/gm/ComposeArea;Ljava/lang/String;)V
    .locals 5
    .parameter "root"
    .parameter "account"

    .prologue
    .line 137
    iput-object p2, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    .line 138
    new-instance v1, Lcom/android/common/Rfc822Validator;

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mValidator:Lcom/android/common/Rfc822Validator;

    .line 139
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    .line 140
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->renderView()V

    .line 141
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getBodyText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getQuotedTextView()Lcom/google/android/gm/QuotedTextView;

    move-result-object v0

    .line 143
    .local v0, quotedText:Lcom/google/android/gm/QuotedTextView;
    invoke-virtual {v0, p0}, Lcom/google/android/gm/QuotedTextView;->setShowHideListener(Lcom/google/android/gm/QuotedTextView$ShowHideQuotedTextListener;)V

    .line 144
    invoke-virtual {v0, p0}, Lcom/google/android/gm/QuotedTextView;->setRespondInlineListener(Lcom/google/android/gm/QuotedTextView$RespondInlineListener;)V

    .line 145
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gm/AttachmentsView;->setAttachmentChangesListener(Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;)V

    .line 146
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getSubjectText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getToList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getCcList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getBccList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    return-void
.end method

.method public requestFocus()V
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->getToListLength()I

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeArea;->focusToList()V

    .line 1082
    :goto_0
    return-void

    .line 1077
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->isSubjectEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->focusSubject()V

    goto :goto_0

    .line 1080
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->focusBody()V

    goto :goto_0
.end method

.method public setBody(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "text"
    .parameter "withSignature"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ComposeArea;->setBody(Ljava/lang/CharSequence;Z)V

    .line 301
    return-void
.end method

.method public setQuotedSectionVisibility(Z)V
    .locals 1
    .parameter "allow"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->setQuotedSectionVisibility(Z)V

    .line 235
    return-void
.end method

.method public setQuotedText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "text"
    .parameter "allow"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ComposeArea;->setQuotedText(Ljava/lang/CharSequence;Z)V

    .line 244
    return-void
.end method

.method public setSubject(Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V
    .locals 3
    .parameter "refCursor"
    .parameter "action"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getSubject()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-virtual {p0, p2, v1, v2}, Lcom/google/android/gm/ComposeAreaController;->getCorrectedSubject(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->setSubject(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeArea;->setSubject(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public showRecipientErrorDialog(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1095
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0146

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0145

    new-instance v2, Lcom/google/android/gm/ComposeAreaController$1;

    invoke-direct {v2, p0}, Lcom/google/android/gm/ComposeAreaController$1;-><init>(Lcom/google/android/gm/ComposeAreaController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRecipientErrorDialog:Landroid/app/AlertDialog;

    .line 1109
    return-void
.end method

.method protected tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 1003
    .local v2, length:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v3, tokenized:Ljava/util/List;,"Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1006
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1008
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public updateFromCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V
    .locals 3
    .parameter "draftCursor"
    .parameter "refMessageCursor"
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 392
    invoke-direct {p0}, Lcom/google/android/gm/ComposeAreaController;->clearComposeArea()V

    .line 394
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAttachmentInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gm/ComposeAreaController;->updateAttachments(ILjava/util/List;)V

    .line 396
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    if-nez p3, :cond_1

    .line 400
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 409
    :cond_0
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    .line 417
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeAreaController;->updateHideOrShowCcBcc()V

    .line 418
    return-void

    .line 401
    :cond_1
    if-ne p3, v1, :cond_0

    .line 403
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 405
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeArea;->getToList()Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ComposeAreaController;->addAddressToList(Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;)V

    .line 406
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;)V

    .line 407
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBccAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addBccAddresses(Ljava/util/Collection;)V

    goto :goto_0

    .line 411
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addToAddresses(Ljava/util/Collection;)V

    .line 412
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addCcAddresses(Ljava/util/Collection;)V

    .line 413
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBccAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeAreaController;->addBccAddresses(Ljava/util/Collection;)V

    .line 414
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gm/ComposeAreaController;->setSubject(Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    goto :goto_1
.end method

.method public updateHideOrShowCcBcc()V
    .locals 3

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mController:Lcom/google/android/gm/ComposeController;

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    iget-object v2, p0, Lcom/google/android/gm/ComposeAreaController;->mShowCcBcc:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ComposeArea;->updateHideOrShowCcBcc(Ljava/lang/Boolean;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gm/ComposeController;->updateHideOrShowCcBcc(Z)V

    .line 1057
    return-void

    .line 1055
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateReplyFromAccount(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1276
    iput-object p1, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    .line 1277
    iget-object v0, p0, Lcom/google/android/gm/ComposeAreaController;->mRootView:Lcom/google/android/gm/ComposeArea;

    iget-object v1, p0, Lcom/google/android/gm/ComposeAreaController;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeArea;->updateReplyFromAccount(Ljava/lang/String;)V

    .line 1279
    :cond_0
    return-void
.end method
