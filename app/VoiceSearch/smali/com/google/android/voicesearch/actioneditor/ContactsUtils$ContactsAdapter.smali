.class public Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/actioneditor/ContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsAdapter"
.end annotation


# static fields
.field private static final MAX_SUGGESTIONS:I = 0x2


# instance fields
.field private mAddressType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 251
    const v0, 0x7f030005

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 252
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 254
    iput p2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mAddressType:I

    .line 255
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    check-cast p1, Landroid/widget/TextView;

    .line 283
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->access$000(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactRepresentation(Landroid/content/Context;Lcom/google/android/voicesearch/actions/Contact;Z)Landroid/text/SpannableString;

    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->access$000(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactRepresentation(Landroid/content/Context;Lcom/google/android/voicesearch/actions/Contact;Z)Landroid/text/SpannableString;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactAtIndex(I)Lcom/google/android/voicesearch/actions/Contact;
    .locals 2
    .parameter

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 270
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->access$000(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x2

    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 290
    if-nez p1, :cond_1

    const-string v0, ""

    .line 291
    :goto_0
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mAddressType:I

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->access$100(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 292
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->PROJECTION:[Ljava/lang/String;

    const-string v5, "is_primary DESC, times_contacted DESC, display_name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 298
    :cond_0
    return-object v0

    .line 290
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
